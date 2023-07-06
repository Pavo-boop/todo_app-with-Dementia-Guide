import 'package:get/get.dart';
import 'package:todo_app/db/db_helper.dart';
import 'package:todo_app/models/tasks.dart';

class   TaskController extends GetxController{
   final RxList<Task> taskList = <Task>[].obs;
  Future<int> addTask({Task? task}){
    return DBHelper.insert(task);

  }

     Future<void> getTasks()async{
     final List<Map<String, dynamic>>  tasks = await DBHelper.query();
      taskList.assignAll(tasks.map((data) => Task.fromJson(data)).toList());
  }
   void deleteTasks(Task task)async{
    await DBHelper.delete(task);
    getTasks();
  }
   void deleteAllTasks()async{
     DBHelper.deleteAll();
     getTasks();
   }
   void markUsCompleted(int id )async{
     DBHelper.update(id);
    getTasks();

  }


}