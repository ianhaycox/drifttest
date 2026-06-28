// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $TestTableTable extends TestTable
    with TableInfo<$TestTableTable, TestTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TestTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _dtWithDefaultMeta = const VerificationMeta(
    'dtWithDefault',
  );
  @override
  late final GeneratedColumn<DateTime> dtWithDefault =
      GeneratedColumn<DateTime>(
        'dt_with_default',
        aliasedName,
        false,
        type: DriftSqlType.dateTime,
        requiredDuringInsert: false,
        defaultValue: currentDateAndTime,
      );
  static const VerificationMeta _dtClientDefaultMeta = const VerificationMeta(
    'dtClientDefault',
  );
  @override
  late final GeneratedColumn<DateTime> dtClientDefault =
      GeneratedColumn<DateTime>(
        'dt_client_default',
        aliasedName,
        false,
        type: DriftSqlType.dateTime,
        requiredDuringInsert: false,
        clientDefault: () => DateTime.now().toUtc(),
      );
  static const VerificationMeta _dtNullMeta = const VerificationMeta('dtNull');
  @override
  late final GeneratedColumn<DateTime> dtNull = GeneratedColumn<DateTime>(
    'dt_null',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _dtMeta = const VerificationMeta('dt');
  @override
  late final GeneratedColumn<DateTime> dt = GeneratedColumn<DateTime>(
    'dt',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _dtSetWithDefaultMeta = const VerificationMeta(
    'dtSetWithDefault',
  );
  @override
  late final GeneratedColumn<DateTime> dtSetWithDefault =
      GeneratedColumn<DateTime>(
        'dt_set_with_default',
        aliasedName,
        false,
        type: DriftSqlType.dateTime,
        requiredDuringInsert: false,
        defaultValue: currentDateAndTime,
      );
  static const VerificationMeta _dtSetClientDefaultMeta =
      const VerificationMeta('dtSetClientDefault');
  @override
  late final GeneratedColumn<DateTime> dtSetClientDefault =
      GeneratedColumn<DateTime>(
        'dt_set_client_default',
        aliasedName,
        false,
        type: DriftSqlType.dateTime,
        requiredDuringInsert: false,
        clientDefault: () => DateTime.now().toUtc(),
      );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    dtWithDefault,
    dtClientDefault,
    dtNull,
    dt,
    dtSetWithDefault,
    dtSetClientDefault,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'test_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<TestTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('dt_with_default')) {
      context.handle(
        _dtWithDefaultMeta,
        dtWithDefault.isAcceptableOrUnknown(
          data['dt_with_default']!,
          _dtWithDefaultMeta,
        ),
      );
    }
    if (data.containsKey('dt_client_default')) {
      context.handle(
        _dtClientDefaultMeta,
        dtClientDefault.isAcceptableOrUnknown(
          data['dt_client_default']!,
          _dtClientDefaultMeta,
        ),
      );
    }
    if (data.containsKey('dt_null')) {
      context.handle(
        _dtNullMeta,
        dtNull.isAcceptableOrUnknown(data['dt_null']!, _dtNullMeta),
      );
    }
    if (data.containsKey('dt')) {
      context.handle(_dtMeta, dt.isAcceptableOrUnknown(data['dt']!, _dtMeta));
    } else if (isInserting) {
      context.missing(_dtMeta);
    }
    if (data.containsKey('dt_set_with_default')) {
      context.handle(
        _dtSetWithDefaultMeta,
        dtSetWithDefault.isAcceptableOrUnknown(
          data['dt_set_with_default']!,
          _dtSetWithDefaultMeta,
        ),
      );
    }
    if (data.containsKey('dt_set_client_default')) {
      context.handle(
        _dtSetClientDefaultMeta,
        dtSetClientDefault.isAcceptableOrUnknown(
          data['dt_set_client_default']!,
          _dtSetClientDefaultMeta,
        ),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  TestTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return TestTableData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      dtWithDefault: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}dt_with_default'],
      )!,
      dtClientDefault: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}dt_client_default'],
      )!,
      dtNull: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}dt_null'],
      ),
      dt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}dt'],
      )!,
      dtSetWithDefault: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}dt_set_with_default'],
      )!,
      dtSetClientDefault: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}dt_set_client_default'],
      )!,
    );
  }

  @override
  $TestTableTable createAlias(String alias) {
    return $TestTableTable(attachedDatabase, alias);
  }
}

class TestTableData extends DataClass implements Insertable<TestTableData> {
  final String id;
  final DateTime dtWithDefault;
  final DateTime dtClientDefault;
  final DateTime? dtNull;
  final DateTime dt;
  final DateTime dtSetWithDefault;
  final DateTime dtSetClientDefault;
  const TestTableData({
    required this.id,
    required this.dtWithDefault,
    required this.dtClientDefault,
    this.dtNull,
    required this.dt,
    required this.dtSetWithDefault,
    required this.dtSetClientDefault,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['dt_with_default'] = Variable<DateTime>(dtWithDefault);
    map['dt_client_default'] = Variable<DateTime>(dtClientDefault);
    if (!nullToAbsent || dtNull != null) {
      map['dt_null'] = Variable<DateTime>(dtNull);
    }
    map['dt'] = Variable<DateTime>(dt);
    map['dt_set_with_default'] = Variable<DateTime>(dtSetWithDefault);
    map['dt_set_client_default'] = Variable<DateTime>(dtSetClientDefault);
    return map;
  }

  TestTableCompanion toCompanion(bool nullToAbsent) {
    return TestTableCompanion(
      id: Value(id),
      dtWithDefault: Value(dtWithDefault),
      dtClientDefault: Value(dtClientDefault),
      dtNull: dtNull == null && nullToAbsent
          ? const Value.absent()
          : Value(dtNull),
      dt: Value(dt),
      dtSetWithDefault: Value(dtSetWithDefault),
      dtSetClientDefault: Value(dtSetClientDefault),
    );
  }

  factory TestTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TestTableData(
      id: serializer.fromJson<String>(json['id']),
      dtWithDefault: serializer.fromJson<DateTime>(json['dtWithDefault']),
      dtClientDefault: serializer.fromJson<DateTime>(json['dtClientDefault']),
      dtNull: serializer.fromJson<DateTime?>(json['dtNull']),
      dt: serializer.fromJson<DateTime>(json['dt']),
      dtSetWithDefault: serializer.fromJson<DateTime>(json['dtSetWithDefault']),
      dtSetClientDefault: serializer.fromJson<DateTime>(
        json['dtSetClientDefault'],
      ),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'dtWithDefault': serializer.toJson<DateTime>(dtWithDefault),
      'dtClientDefault': serializer.toJson<DateTime>(dtClientDefault),
      'dtNull': serializer.toJson<DateTime?>(dtNull),
      'dt': serializer.toJson<DateTime>(dt),
      'dtSetWithDefault': serializer.toJson<DateTime>(dtSetWithDefault),
      'dtSetClientDefault': serializer.toJson<DateTime>(dtSetClientDefault),
    };
  }

  TestTableData copyWith({
    String? id,
    DateTime? dtWithDefault,
    DateTime? dtClientDefault,
    Value<DateTime?> dtNull = const Value.absent(),
    DateTime? dt,
    DateTime? dtSetWithDefault,
    DateTime? dtSetClientDefault,
  }) => TestTableData(
    id: id ?? this.id,
    dtWithDefault: dtWithDefault ?? this.dtWithDefault,
    dtClientDefault: dtClientDefault ?? this.dtClientDefault,
    dtNull: dtNull.present ? dtNull.value : this.dtNull,
    dt: dt ?? this.dt,
    dtSetWithDefault: dtSetWithDefault ?? this.dtSetWithDefault,
    dtSetClientDefault: dtSetClientDefault ?? this.dtSetClientDefault,
  );
  TestTableData copyWithCompanion(TestTableCompanion data) {
    return TestTableData(
      id: data.id.present ? data.id.value : this.id,
      dtWithDefault: data.dtWithDefault.present
          ? data.dtWithDefault.value
          : this.dtWithDefault,
      dtClientDefault: data.dtClientDefault.present
          ? data.dtClientDefault.value
          : this.dtClientDefault,
      dtNull: data.dtNull.present ? data.dtNull.value : this.dtNull,
      dt: data.dt.present ? data.dt.value : this.dt,
      dtSetWithDefault: data.dtSetWithDefault.present
          ? data.dtSetWithDefault.value
          : this.dtSetWithDefault,
      dtSetClientDefault: data.dtSetClientDefault.present
          ? data.dtSetClientDefault.value
          : this.dtSetClientDefault,
    );
  }

  @override
  String toString() {
    return (StringBuffer('TestTableData(')
          ..write('id: $id, ')
          ..write('dtWithDefault: $dtWithDefault, ')
          ..write('dtClientDefault: $dtClientDefault, ')
          ..write('dtNull: $dtNull, ')
          ..write('dt: $dt, ')
          ..write('dtSetWithDefault: $dtSetWithDefault, ')
          ..write('dtSetClientDefault: $dtSetClientDefault')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    dtWithDefault,
    dtClientDefault,
    dtNull,
    dt,
    dtSetWithDefault,
    dtSetClientDefault,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TestTableData &&
          other.id == this.id &&
          other.dtWithDefault == this.dtWithDefault &&
          other.dtClientDefault == this.dtClientDefault &&
          other.dtNull == this.dtNull &&
          other.dt == this.dt &&
          other.dtSetWithDefault == this.dtSetWithDefault &&
          other.dtSetClientDefault == this.dtSetClientDefault);
}

class TestTableCompanion extends UpdateCompanion<TestTableData> {
  final Value<String> id;
  final Value<DateTime> dtWithDefault;
  final Value<DateTime> dtClientDefault;
  final Value<DateTime?> dtNull;
  final Value<DateTime> dt;
  final Value<DateTime> dtSetWithDefault;
  final Value<DateTime> dtSetClientDefault;
  final Value<int> rowid;
  const TestTableCompanion({
    this.id = const Value.absent(),
    this.dtWithDefault = const Value.absent(),
    this.dtClientDefault = const Value.absent(),
    this.dtNull = const Value.absent(),
    this.dt = const Value.absent(),
    this.dtSetWithDefault = const Value.absent(),
    this.dtSetClientDefault = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  TestTableCompanion.insert({
    required String id,
    this.dtWithDefault = const Value.absent(),
    this.dtClientDefault = const Value.absent(),
    this.dtNull = const Value.absent(),
    required DateTime dt,
    this.dtSetWithDefault = const Value.absent(),
    this.dtSetClientDefault = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       dt = Value(dt);
  static Insertable<TestTableData> custom({
    Expression<String>? id,
    Expression<DateTime>? dtWithDefault,
    Expression<DateTime>? dtClientDefault,
    Expression<DateTime>? dtNull,
    Expression<DateTime>? dt,
    Expression<DateTime>? dtSetWithDefault,
    Expression<DateTime>? dtSetClientDefault,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (dtWithDefault != null) 'dt_with_default': dtWithDefault,
      if (dtClientDefault != null) 'dt_client_default': dtClientDefault,
      if (dtNull != null) 'dt_null': dtNull,
      if (dt != null) 'dt': dt,
      if (dtSetWithDefault != null) 'dt_set_with_default': dtSetWithDefault,
      if (dtSetClientDefault != null)
        'dt_set_client_default': dtSetClientDefault,
      if (rowid != null) 'rowid': rowid,
    });
  }

  TestTableCompanion copyWith({
    Value<String>? id,
    Value<DateTime>? dtWithDefault,
    Value<DateTime>? dtClientDefault,
    Value<DateTime?>? dtNull,
    Value<DateTime>? dt,
    Value<DateTime>? dtSetWithDefault,
    Value<DateTime>? dtSetClientDefault,
    Value<int>? rowid,
  }) {
    return TestTableCompanion(
      id: id ?? this.id,
      dtWithDefault: dtWithDefault ?? this.dtWithDefault,
      dtClientDefault: dtClientDefault ?? this.dtClientDefault,
      dtNull: dtNull ?? this.dtNull,
      dt: dt ?? this.dt,
      dtSetWithDefault: dtSetWithDefault ?? this.dtSetWithDefault,
      dtSetClientDefault: dtSetClientDefault ?? this.dtSetClientDefault,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (dtWithDefault.present) {
      map['dt_with_default'] = Variable<DateTime>(dtWithDefault.value);
    }
    if (dtClientDefault.present) {
      map['dt_client_default'] = Variable<DateTime>(dtClientDefault.value);
    }
    if (dtNull.present) {
      map['dt_null'] = Variable<DateTime>(dtNull.value);
    }
    if (dt.present) {
      map['dt'] = Variable<DateTime>(dt.value);
    }
    if (dtSetWithDefault.present) {
      map['dt_set_with_default'] = Variable<DateTime>(dtSetWithDefault.value);
    }
    if (dtSetClientDefault.present) {
      map['dt_set_client_default'] = Variable<DateTime>(
        dtSetClientDefault.value,
      );
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TestTableCompanion(')
          ..write('id: $id, ')
          ..write('dtWithDefault: $dtWithDefault, ')
          ..write('dtClientDefault: $dtClientDefault, ')
          ..write('dtNull: $dtNull, ')
          ..write('dt: $dt, ')
          ..write('dtSetWithDefault: $dtSetWithDefault, ')
          ..write('dtSetClientDefault: $dtSetClientDefault, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $TestTableTable testTable = $TestTableTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [testTable];
  @override
  DriftDatabaseOptions get options =>
      const DriftDatabaseOptions(storeDateTimeAsText: true);
}

typedef $$TestTableTableCreateCompanionBuilder =
    TestTableCompanion Function({
      required String id,
      Value<DateTime> dtWithDefault,
      Value<DateTime> dtClientDefault,
      Value<DateTime?> dtNull,
      required DateTime dt,
      Value<DateTime> dtSetWithDefault,
      Value<DateTime> dtSetClientDefault,
      Value<int> rowid,
    });
typedef $$TestTableTableUpdateCompanionBuilder =
    TestTableCompanion Function({
      Value<String> id,
      Value<DateTime> dtWithDefault,
      Value<DateTime> dtClientDefault,
      Value<DateTime?> dtNull,
      Value<DateTime> dt,
      Value<DateTime> dtSetWithDefault,
      Value<DateTime> dtSetClientDefault,
      Value<int> rowid,
    });

class $$TestTableTableFilterComposer
    extends Composer<_$AppDatabase, $TestTableTable> {
  $$TestTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get dtWithDefault => $composableBuilder(
    column: $table.dtWithDefault,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get dtClientDefault => $composableBuilder(
    column: $table.dtClientDefault,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get dtNull => $composableBuilder(
    column: $table.dtNull,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get dt => $composableBuilder(
    column: $table.dt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get dtSetWithDefault => $composableBuilder(
    column: $table.dtSetWithDefault,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get dtSetClientDefault => $composableBuilder(
    column: $table.dtSetClientDefault,
    builder: (column) => ColumnFilters(column),
  );
}

class $$TestTableTableOrderingComposer
    extends Composer<_$AppDatabase, $TestTableTable> {
  $$TestTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get dtWithDefault => $composableBuilder(
    column: $table.dtWithDefault,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get dtClientDefault => $composableBuilder(
    column: $table.dtClientDefault,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get dtNull => $composableBuilder(
    column: $table.dtNull,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get dt => $composableBuilder(
    column: $table.dt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get dtSetWithDefault => $composableBuilder(
    column: $table.dtSetWithDefault,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get dtSetClientDefault => $composableBuilder(
    column: $table.dtSetClientDefault,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$TestTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $TestTableTable> {
  $$TestTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<DateTime> get dtWithDefault => $composableBuilder(
    column: $table.dtWithDefault,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get dtClientDefault => $composableBuilder(
    column: $table.dtClientDefault,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get dtNull =>
      $composableBuilder(column: $table.dtNull, builder: (column) => column);

  GeneratedColumn<DateTime> get dt =>
      $composableBuilder(column: $table.dt, builder: (column) => column);

  GeneratedColumn<DateTime> get dtSetWithDefault => $composableBuilder(
    column: $table.dtSetWithDefault,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get dtSetClientDefault => $composableBuilder(
    column: $table.dtSetClientDefault,
    builder: (column) => column,
  );
}

class $$TestTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $TestTableTable,
          TestTableData,
          $$TestTableTableFilterComposer,
          $$TestTableTableOrderingComposer,
          $$TestTableTableAnnotationComposer,
          $$TestTableTableCreateCompanionBuilder,
          $$TestTableTableUpdateCompanionBuilder,
          (
            TestTableData,
            BaseReferences<_$AppDatabase, $TestTableTable, TestTableData>,
          ),
          TestTableData,
          PrefetchHooks Function()
        > {
  $$TestTableTableTableManager(_$AppDatabase db, $TestTableTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$TestTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$TestTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$TestTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<DateTime> dtWithDefault = const Value.absent(),
                Value<DateTime> dtClientDefault = const Value.absent(),
                Value<DateTime?> dtNull = const Value.absent(),
                Value<DateTime> dt = const Value.absent(),
                Value<DateTime> dtSetWithDefault = const Value.absent(),
                Value<DateTime> dtSetClientDefault = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => TestTableCompanion(
                id: id,
                dtWithDefault: dtWithDefault,
                dtClientDefault: dtClientDefault,
                dtNull: dtNull,
                dt: dt,
                dtSetWithDefault: dtSetWithDefault,
                dtSetClientDefault: dtSetClientDefault,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                Value<DateTime> dtWithDefault = const Value.absent(),
                Value<DateTime> dtClientDefault = const Value.absent(),
                Value<DateTime?> dtNull = const Value.absent(),
                required DateTime dt,
                Value<DateTime> dtSetWithDefault = const Value.absent(),
                Value<DateTime> dtSetClientDefault = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => TestTableCompanion.insert(
                id: id,
                dtWithDefault: dtWithDefault,
                dtClientDefault: dtClientDefault,
                dtNull: dtNull,
                dt: dt,
                dtSetWithDefault: dtSetWithDefault,
                dtSetClientDefault: dtSetClientDefault,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$TestTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $TestTableTable,
      TestTableData,
      $$TestTableTableFilterComposer,
      $$TestTableTableOrderingComposer,
      $$TestTableTableAnnotationComposer,
      $$TestTableTableCreateCompanionBuilder,
      $$TestTableTableUpdateCompanionBuilder,
      (
        TestTableData,
        BaseReferences<_$AppDatabase, $TestTableTable, TestTableData>,
      ),
      TestTableData,
      PrefetchHooks Function()
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$TestTableTableTableManager get testTable =>
      $$TestTableTableTableManager(_db, _db.testTable);
}
