import 'package:flutter/foundation.dart';
import 'package:sqflite/sqflite.dart';
import 'package:todo_app/models/tasks.dart';
class DBHelper{
  static Database? db ;
static const int version = 1;
static const String tableName = 'task';

static Future<void> initDb() async {
  if (db != null){
    debugPrint('not null db');
    return;
    }
  else{
    try{
      String path = '${await getDatabasesPath()}task.db';
      debugPrint('in database path');
     db =await openDatabase(path,version: version,
         onCreate: (Database db, int version) async {
          debugPrint('creating new one');
           await db.execute(
               'CREATE TABLE $tableName('
               'id INTEGER PRIMARY KEY AUTOINCREMENT,'
               'title STRING,'
               'note TEXT,'
               'date STRING,'
               'startTime STRING,'
               'endTime STRING,'
               'remind INTEGER ,'
               'repeat STRING,'
                'color INTEGER ,'
               'isCompleted INTEGER)'
             ,
           );
         });
     if (kDebugMode) {
       print('database created');
     }

    }catch(e){
      if (kDebugMode) {
        print(e);
      }
    }
  }
  }
  static Future<int> insert(Task? task) async{
  if (kDebugMode) {
    print('insert function called');
  }
  return await db!.insert(tableName, task!.toJson());
  }
  static Future<int> delete(Task? task) async{
    if (kDebugMode) {
      print('delete function called');
    }
    return await db!.delete(tableName,where: 'id = ?',whereArgs: [task!.id]);
  }
  static Future<int> deleteAll() async {
    if (kDebugMode) {
      print('delete All function called');
    }
    return await db!.delete(tableName);
  }
  static Future<int> update(int? id) async{
    if (kDebugMode) {
      print('update function called');
    }
    return await db!.rawUpdate('''
    UPDATE task  
    SET isCompleted = ?
    WHERE id = ?
    ''',[1,id]);
  }
  static Future< List<Map<String,dynamic>>> query() async{
    if (kDebugMode) {
      print('query function called');
    }
    return await db!.query(tableName,);
  }

}