import 'package:drift/drift.dart';
import 'connection.dart';
import 'tables/test.dart';

part 'app_database.g.dart';

@DriftDatabase(tables: [TestTable])
class AppDatabase extends _$AppDatabase {
  AppDatabase([QueryExecutor? executor]) : super(executor ?? openConnection());

  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration => MigrationStrategy(
    onCreate: (m) async {
      await m.createAll();
    },
  );
}
