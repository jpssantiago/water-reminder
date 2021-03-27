import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseProvider {
  DatabaseProvider._();
  static final DatabaseProvider db = DatabaseProvider._();
  static Database _database;

  Future<Database> get database async {
    if (_database != null) {
      return _database;
    }

    _database = await initDatabase();
    return _database;
  }

  initDatabase() async {
    return await openDatabase(
      join(await getDatabasesPath(), 'ufittness.db'),
      onCreate: (db, version) async {
        await db.execute('''
        CREATE TABLE users (
          drink_goal NUMBER, initial_date TEXT
        )
        ''');

        await db.execute('''
        CREATE TABLE drinks(
          id TEXT, drink_type TEXT, value NUMBER, date TEXT
        )
        ''');
      },
      version: 1,
    );
  }
}
