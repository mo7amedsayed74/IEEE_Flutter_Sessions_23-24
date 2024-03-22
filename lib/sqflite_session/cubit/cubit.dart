import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ieee_sessions/sqflite_session/cubit/states.dart';
import 'package:sqflite/sqflite.dart';

class ToDoCubit extends Cubit<ToDoStates> {
  ToDoCubit() : super(InitialState());

  late Database db;

  void createDB() async {
    await openDatabase(
      'todo.db',
      version: 1,
      onCreate: (db, version) {
        db.execute('''
        CREATE TABLE tasks(id INTEGER PRIMARY KEY, note TEXT, number INTEGER)
        ''');
      },
      onOpen: (db) {
        print('open database');
      },
    ).then((value) {
      //print('create db');
      db = value;
    }).catchError((error) {
      print(error.toString());
    });
  }

  void getRecordsFromDB() async {
    await db.rawQuery(
      // List<Map<String, Object?>>
      'SELECT * FROM tasks',
    ).then((value) {
      print(value);
    }).catchError((error) {
      print(error.toString());
    });
  }

  void insertDB({
    required String note,
    required int number,
  }) async {
    await db.rawInsert(
      'INSERT INTO tasks(note, number) VALUES(?, ?)',
      [note, number],
    ).then((value) {
      getRecordsFromDB();
      print('insert success : $value');
    }).catchError((error) {
      print(error.toString());
    });
  }

  void updateDB({
    required String note,
    required int number,
    required int id,
  }) async {
    await db.rawUpdate(
      'UPDATE tasks SET note=? , number=? WHERE id=?',
      [note, number, id],
    );
  }

  void deleteFromDB({
    required int id,
  }) async {
    await db.rawDelete(
      'DELETE FROM tasks WHERE id=?',
      [id],
    ).then((value) {
      print('delete successfully');
      emit(DeleteState());
    });
  }
}
