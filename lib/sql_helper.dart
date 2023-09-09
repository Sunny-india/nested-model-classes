import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class SQLHelper {
  SQLHelper._();
  static SQLHelper sqlHelper = SQLHelper._();
  Database? database;
  Future<Database> getDB() async {
    if (database != null) {
      return database!;
    } else {
      return database = await initDB();
    }
  }

  Future<Database> initDB() async {
    String path = join(await getDatabasesPath(), 'users.db');
    return await openDatabase(path, version: 1, onCreate: _onCreate);
  }

  void _onCreate(Database db, version) async {
    await db.execute('''
    CREATE TABLE users (id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT
    )
    ''');
    print('user table created here');
  }
}
