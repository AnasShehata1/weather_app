import 'dart:developer';

import 'package:sqflite/sqflite.dart';

Database? db;

  void createDatabase() async {
    db = await openDatabase(
      'weather_city.db',
      version: 1,
      onCreate: (db, version) async {
        try {
          await db
              .execute('CREATE TABLE City (id INTEGER PRIMARY KEY, name TEXT)');
          log('table is created');
        } catch (e) {
          log(e.toString());
        }
      },
      onOpen: (db) {
        log('database is opened');
      },
    );
  }