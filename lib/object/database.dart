import 'package:sqflite/sqflite.dart';

class Database {
  database;

  static final Database shared = Database._init();
  Database._init() {
    // init work here
    database = openDatabase(
      // Set the path to the database. Note: Using the `join` function from the
      // `path` package is best practice to ensure the path is correctly
      // constructed for each platform.
        join(await getDatabasesPath(), 'doggie_database.db'),
    );
  }

  void doSomething() {
  }
}