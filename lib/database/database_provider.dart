import 'app_database.dart';

/// Global app database instance. The underlying SQLite file is opened
/// lazily on first access.
final appDb = AppDatabase();
