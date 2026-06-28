import 'package:drifttest/database/app_database.dart';
import 'package:flutter/material.dart';
import 'database/database_provider.dart';
import 'package:drift/drift.dart' show Value;
import 'package:uuid/uuid.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

final now = DateTime.now().toUtc();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _output = 'Now:${now.toIso8601String()}\n';

  Future<List<TestTableData>> _addRow() async {
    final uuid = Uuid().v4();

    await appDb
        .into(appDb.testTable)
        .insert(
          TestTableCompanion(
            id: Value(uuid),
            dt: Value(now),
            dtSetClientDefault: Value(now),
            dtSetWithDefault: Value(now),
          ),
        );
    final w = await appDb.select(appDb.testTable).get();

    return w;
  }

  void _add() async {
    final rows = await _addRow();

    if (rows.isNotEmpty) _output += 'Rows[0].dt:${rows[0].dt.toIso8601String()}\n';

    setState(() {
      _output += rows.toList().toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Theme.of(context).colorScheme.inversePrimary, title: Text(widget.title)),
      body: Center(
        child: Column(mainAxisAlignment: .center, children: [const Text('Output from SELECT'), Text(_output)]),
      ),
      floatingActionButton: FloatingActionButton(onPressed: _add, tooltip: 'Add', child: const Icon(Icons.add)),
    );
  }
}
