// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use, use_build_context_synchronously

import 'dart:core';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_app/models/tasks.dart';
import 'package:todo_app/ui/widget/button.dart';
import '../../controller/task_controller.dart';
import 'package:intl/intl.dart';

import '../theme.dart';
import '../widget/input_field.dart';

class AddTaskPage extends StatefulWidget {
  const AddTaskPage({Key? key}) : super(key: key);

  @override
  State<AddTaskPage> createState() => _AddTaskPageState();
}

class _AddTaskPageState extends State<AddTaskPage> {
  final TaskController taskEditingController = Get.put(TaskController());

  final TextEditingController? titleController = TextEditingController();
  final TextEditingController? noteController = TextEditingController();

  DateTime selectDate = DateTime.now();
  String? startTime = DateFormat('hh:mm a').format(DateTime.now()).toString();
  String? endTime = DateFormat('hh:mm a').format(
      DateTime.now().add(const Duration(minutes: 10))).toString();
  int? selectedRemind = 0;
  List<int?> remindList = [0,5, 10, 15, 20];
  String? selectedRepeat = 'None';
  List<String?> repeatList = ['None', 'Daily', 'Weekly', 'Monthly'];
  int? selectedColor = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.backgroundColor,
      appBar: buildAppBar,
      body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text('Add Task', style: headingStyle,),
                InputField(
                  title: 'Title',
                  hint: ' Add Task',
                  controller: titleController!,
                  widget: const Icon(Icons.title),),
                InputField(
                  title: 'Note',
                  hint: ' Add Note',
                  controller: noteController!,
                  widget: const Icon(Icons.note_alt),),
                InputField(
                    title: 'Date',
                    hint: DateFormat.yMd().format(selectDate),
                    widget: IconButton(
                        onPressed: () => getDateFormUser()
                          , icon: const Icon(
                      Icons.calendar_today_outlined,
                      color: Colors.grey,))),
                Row(
                  children: [
                    Expanded(
                      child: InputField(
                        title: 'Start Tme',
                        hint: startTime,
                        widget: IconButton(
                            onPressed: () => getTimeFormUser(isStartTime : true)
                            , icon: const Icon(
                          Icons.timelapse_outlined,
                          color: Colors.grey,)),),
                    ),
                    SizedBox(width: 12,),
                    Expanded(
                        child: InputField(
                          title: 'EndTime',
                          hint: endTime,
                          widget: IconButton(onPressed: () => getTimeFormUser(isStartTime : false), icon: const Icon(
                            Icons.timelapse_outlined,
                            color: Colors.grey,),),)
                    ),
                  ],
                ),

                InputField(

                  title: 'Remind',
                  hint: '$selectedRemind minutes early',
                  widget: DropdownButton<String?>(
                    dropdownColor: Colors.blueGrey,
                    borderRadius: BorderRadius.circular(10),
                    items: remindList.map<DropdownMenuItem<String?>>((value) =>
                        DropdownMenuItem<String?>(value: value.toString(),
                          child: Text('$value', style: const TextStyle(
                              color: Colors.white), ),
                        ),
                    ).toList(),
                    icon: Icon(Icons.keyboard_arrow_down),
                    style: subTitleStyle,
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedRemind = int.parse(newValue!);
                      });
                    },),
                ),
                InputField(
                  title: 'Repeat',
                  hint: selectedRepeat,
                  widget: DropdownButton<String?>(
                    dropdownColor: Colors.blueGrey,
                    borderRadius: BorderRadius.circular(10),
                    items: repeatList.map<DropdownMenuItem<String?>>((
                        String? value) =>
                        DropdownMenuItem<String?>(value: value,
                          child: Text(value!, style: const TextStyle(
                              color: Colors.white),),
                        ),
                    ).toList(),
                    style: subTitleStyle,
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedRepeat = newValue!;
                      });
                    },),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    colorPalette(),
                    MyButton(
                        label: 'Create Task',
                        onTap: () {
                          validateDate();
                        })

                  ],
                )
              ],
            ),
          )
      ),
    );
  }

  AppBar get buildAppBar => AppBar(
    leading: IconButton(
      onPressed: ()=> Get.back(),
      icon:  const Icon(Icons.arrow_back_ios,size: 24 , color: primaryClr,),
    ),
    elevation: 0,
    backgroundColor:context.theme.backgroundColor,
      actions: [
        // CircleAvatar(
        //   backgroundImage: AssetImage('assets/person.jpeg'),
        //   radius: 18,
        // )
      ],
  );
  validateDate(){
    if (titleController!.text.isNotEmpty && noteController!.text.isNotEmpty){
      addTasksToDb();
      Get.back();
    }
    else if(titleController!.text.isEmpty || noteController!.text.isEmpty) {
      Get.snackbar('required', 'All fields are required',
          snackPosition:SnackPosition.BOTTOM,
          backgroundColor: Colors.white,
          colorText: pinkClr,
          icon: const Icon(Icons.warning_amber_rounded ,color: Colors.red,) );
    }else{
      if (kDebugMode) {
        print('##### SomeThing Bad Happened########');
      }
    }
  }

  addTasksToDb() async{
    int value =  await taskEditingController.addTask(
      task : Task(
        title: titleController!.text,
        note: noteController!.text,
        isCompleted: 0 ,
        date: DateFormat.yMd().format(selectDate),
        startTime: startTime!,
        endTime : endTime!,
        color: selectedColor!,
        remind: selectedRemind!,
        repeat: selectedRepeat!,
      ),
    );
    if (kDebugMode) {
      print('$value');
    }
  }

  Column colorPalette() {
    return Column(
      children: [
        Text('Color',
          style: titleStyle,),
        Wrap(
          children: List<Widget>.generate(3, (index) =>
              GestureDetector(
                onTap: () {
                  setState(() {
                    selectedColor = index;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: CircleAvatar(
                    backgroundColor: index == 0 ?
                    primaryClr : index == 1 ?
                    pinkClr : orangeClr,
                    child: selectedColor! == index ? const Icon(
                      Icons.done,
                      size: 16,
                      color: Colors.white,
                    ) : null,
                  ),
                ),
              ),
          ),
        )
      ],
    );
  }
  getDateFormUser() async{
    DateTime? pickedDate =  await showDatePicker(
        context: context,
        initialDate: selectDate,
        firstDate: DateTime(2022),
        lastDate:DateTime(2030));
    if(pickedDate != null) {
      setState(() => selectDate = pickedDate);
    }
    else {
      if (kDebugMode) {
        print('It is null or something wrong');
      }
    }
  }


  Future<void> getTimeFormUser({required bool isStartTime}) async{
    TimeOfDay? pickedTime =  await showTimePicker(
         context: context,
        initialTime: isStartTime? TimeOfDay.fromDateTime(DateTime.now()) : TimeOfDay.fromDateTime(DateTime.now()),
    );
        String formattedTime = pickedTime!.format(context) ;

    if(isStartTime){
      setState(() => startTime = formattedTime);
    }

    else if(!isStartTime) {
      setState(() => endTime = formattedTime);
    } else
         if (kDebugMode) {
           print('time canceled or something is wrong');
         }
  }

}
