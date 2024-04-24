import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ieee_sessions/sqflite_session/cubit/states.dart';
import 'package:ieee_sessions/sqflite_session/screens/archived_task_body.dart';
import 'package:ieee_sessions/sqflite_session/screens/done_task_body.dart';
import 'package:ieee_sessions/sqflite_session/screens/new_task_body.dart';
import 'package:sqflite/sqflite.dart';

class ToDoCubit extends Cubit<ToDoStates> {
  ToDoCubit() : super(InitialState());

  static ToDoCubit get(context) => BlocProvider.of(context);

  List<Widget> screens = const [
    NewTaskScreen(),
    DoneTaskScreen(),
    ArchivedTaskScreen(),
  ];

  List<String> titles = [
    'new tasks',
    'done tasks',
    'archived tasks',
  ];

  int currentIndex = 0;

  void changeCurrentIndex(int index) {
    currentIndex = index;
    emit(ChangeCurrentIndexState());
  }

  late Database database;
  List<Map<String, dynamic>> newTasks = [];
  List<Map<String, dynamic>> doneTasks = [];
  List<Map<String, dynamic>> archivedTasks = [];

  // (ID INTEGER PRIMARY KEY, title TEXT, date TEXT, time TEXT, status TEXT)
  void createDB() async {
    await openDatabase(
      'todo.db',
      version: 1,
      onCreate: (db, version) {
        db.execute('''
        CREATE TABLE tasks(ID INTEGER PRIMARY KEY, title TEXT, date TEXT, time TEXT, status TEXT)
        ''').then((value) {
          print('table created');
        });
      },
      onOpen: (db) {
        print('open database');
        getRecordsFromDB();
      },
    ).then((value) {
      //print('create db');
      database = value;
    }).catchError((error) {
      print(error.toString());
    });
  }

  void getRecordsFromDB() async {
    newTasks = [];
    doneTasks = [];
    archivedTasks = [];

    emit(GetRecordsLoadingState());
    await database
        .rawQuery(
      // List<Map<String, Object?>>
      'SELECT * FROM tasks', // 1,2,3,4,5,6
    )
        .then((value) {
      for (var row in value) {
        if (row['status'] == 'new') {
          newTasks.add(row);
        } else if (row['status'] == 'done') {
          doneTasks.add(row);
        } else {
          archivedTasks.add(row);
        }
      }
      emit(GetRecordsState());
      //print(value);
    }).catchError((error) {
      print(error.toString());
    });
  }

  void insertDB({
    required String title,
    required String date,
    required String time,
    String status = 'new',
  }) async {
    await database
        .rawInsert(
            // 'INSERT INTO tasks(title, date, time, status) VALUES(?, ?)',
            // [note, number],
            'INSERT INTO tasks(title, date, time, status) VALUES("$title" , "$date","$time","$status")')
        .then((value) {
      // this value is the ID to this insertedRow
      emit(InsertState());
      getRecordsFromDB();
      print('insert success : $value');
    }).catchError((error) {
      print(error.toString());
    });
  }

  void updateDB({
    required String status,
    required int id,
  }) async {
    await database.rawUpdate(
      'UPDATE tasks SET status=? WHERE id=?',
      [status, id],
    ).then((value) {
      emit(UpdateState());
      getRecordsFromDB();
    });
  }

  void deleteFromDB({
    required int id,
  }) async {
    await database.rawDelete(
      'DELETE FROM tasks WHERE id=?',
      [id],
    ).then((value) {
      print('delete successfully');
      emit(DeleteState());
      getRecordsFromDB();
    });
  }
}
