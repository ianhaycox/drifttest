import 'package:drift/drift.dart';

class TestTable extends Table {
  TextColumn get id => text()();
  DateTimeColumn get dtWithDefault => dateTime().withDefault(currentDateAndTime)();
  DateTimeColumn get dtClientDefault => dateTime().clientDefault(() => DateTime.now().toUtc())();
  DateTimeColumn get dtNull => dateTime().nullable()();
  DateTimeColumn get dt => dateTime()();
  DateTimeColumn get dtSetWithDefault => dateTime().withDefault(currentDateAndTime)();
  DateTimeColumn get dtSetClientDefault => dateTime().clientDefault(() => DateTime.now().toUtc())();

  @override
  Set<Column> get primaryKey => {id};
}
