// ignore_for_file: deprecated_member_use, duplicate_ignore

import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_app/services/notfification_services.dart';
import 'package:todo_app/ui/pages/add_task.dart';
import 'package:todo_app/ui/size_config.dart';
import 'package:todo_app/ui/theme.dart';
import 'package:todo_app/ui/widget/button.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:todo_app/ui/widget/task_tile.dart';
import '../../controller/task_controller.dart';
import '../../models/tasks.dart';
import '../../services/theme_services.dart';
import 'dart:core';
import 'package:intl/intl.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late NotifyHelper notifyHelper;
  bool isEng = true;

  @override
  void initState() {
    super.initState();
    notifyHelper = NotifyHelper();
    notifyHelper.requestIOSPermissions();
    notifyHelper.initializeNotification();
    taskEditingController.getTasks();
  }

  final TaskController taskEditingController = Get.put(TaskController());
  DateTime selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      // floatingActionButton: SizedBox.fromSize(
      //   size : const Size.square(70),
      //   child:FloatingActionButton(
      //     backgroundColor: primaryClr,
      //     onPressed: () {
      //         Navigator.of(context).push(
      //           MaterialPageRoute<Object>(
      //             builder: (context) =>  Guide(isEng: isEng,),
      //         ),);
      //       },
      //       child: SizedBox(
      //         width : 50,
      //         child: Image.asset('assets/guide (1).png'))  ,
      //       ),), 
      backgroundColor: context.theme.backgroundColor,
      appBar: _appBar(),
      body: Column(
        children: [
          addTaskBar(),
          addDataBar(),
          const SizedBox(
            height: 6,
          ),
          showTasks(),
        ],
      ),
    );
  }

  AppBar _appBar() => AppBar(
        leading: IconButton(
          onPressed: () {
            ThemeServices().SwitchTheme();
            //  NotifyHelper().displayNotification(title:'Theme Change ', body: '');
            //  NotifyHelper().displayNotification(title: 'Done', body: '' );
          },
          icon: Icon(
            Get.isDarkMode
                ? Icons.wb_sunny_outlined
                : Icons.nightlight_outlined,
            size: 24,
            color: Get.isDarkMode ? Colors.white : darkGreyClr,
          ),
        ),
        elevation: 0,
        backgroundColor: Get.isDarkMode ? darkGreyClr : Colors.white,
        actions: [
          IconButton(
            onPressed: () {
              taskEditingController.deleteAllTasks();
              notifyHelper.cancelNotificationAll();
            },
            icon: Icon(
              Icons.cleaning_services_outlined,
              size: 24,
              color: Get.isDarkMode ? Colors.white : darkGreyClr,
            ),
          ),
          // const CircleAvatar(
          //   backgroundImage: AssetImage('assets/person.jpeg'),
          //   radius: 18,
          // ),
          // IconButton(onPressed: (){
          //   setState(() {
          //     isEng = !isEng;
          //   });
          // }, icon: Icon(Icons.language,size: 24,
          //     color: Get.isDarkMode ? Colors.white : darkGreyClr,),),
          //     IconButton(onPressed: (){
          //   Navigator.of(context).push(
          //       MaterialPageRoute<Object>(
          //         builder: (context) =>  NotesPage(),
          //     ),);
          // }, icon: Icon(Icons.note_add_sharp,size: 24,
          //     color: Get.isDarkMode ? Colors.white : darkGreyClr,),)
        ],
      );

  addTaskBar() {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 10, top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  DateFormat.yMMMd().format(DateTime.now()),
                  style: subHeadingStyle,
                ),
                Text(
                  'Today',
                  style: headingStyle,
                )
              ],
            ),
          ),
          MyButton(
            label: '+ Add Task',
            onTap: () async {
              await Get.to(() => const AddTaskPage());
              taskEditingController.getTasks();
            },
          )
        ],
      ),
    );
  }

  addDataBar() {
    return Container(
      margin: const EdgeInsets.only(top: 6, left: 20),
      child: DatePicker(
        DateTime.now(),
        width: 60,
        height: 100,
        initialSelectedDate: DateTime.now(),
        selectedTextColor: Colors.white,
        selectionColor: primaryClr,
        dateTextStyle: GoogleFonts.lato(
          textStyle: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.grey,
          ),
        ),
        dayTextStyle: GoogleFonts.lato(
          textStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.grey,
          ),
        ),
        monthTextStyle: GoogleFonts.lato(
          textStyle: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
            color: Colors.grey,
          ),
        ),
        onDateChange: (newDate) {
          setState(() {
            selectedDate = newDate;
          });
        },
      ),
    );
  }

  Future<void> onRefresh() async {
    taskEditingController.getTasks();
  }

  showTasks() {
    return Expanded(
      child: Obx(() {
        if (taskEditingController.taskList.isEmpty) {
          return noTaskMsg();
        } else {
          return RefreshIndicator(
            onRefresh: onRefresh,
            child: ListView.builder(
              scrollDirection: SizeConfig.orientation == Orientation.landscape
                  ? Axis.horizontal
                  : Axis.vertical,
              itemBuilder: (BuildContext context, int index) {
                var task = taskEditingController.taskList[index];
                if (task.repeat == 'Daily' ||
                    task.date == DateFormat.yMd().format(selectedDate) ||
                    (task.repeat == 'Weekly' &&
                        selectedDate
                                    .difference(
                                        DateFormat.yMd().parse(task.date!))
                                    .inDays %
                                7 ==
                            0) ||
                    (task.repeat == 'Monthly' &&
                        DateFormat.yMd().parse(task.date!).day ==
                            selectedDate.day)) {
                  var hour = task.startTime.toString().split(':')[0];
                  var minutes = task.startTime.toString().split(':')[1];
                  debugPrint('my time is $hour');
                  debugPrint('my minutes$minutes');

                  var date = DateFormat.jm().parse(task.startTime!);
                  notifyHelper.scheduledNotification(
                      date.hour,
                      date.minute,
                      task);
                  return AnimationConfiguration.staggeredList(
                    position: index,
                    duration: const Duration(milliseconds: 900),
                    child: SlideAnimation(
                      horizontalOffset: 300,
                      child: FadeInAnimation(
                        child: GestureDetector(
                          onTap: () {
                            showBottomSheet(
                              context,
                              task,
                            );
                          },
                          child: TaskTile(task),
                        ),
                      ),
                    ),
                  );
                } else {
                  return Container();
                }
              },
              itemCount: taskEditingController.taskList.length,
            ),
          );
        }
      }),
    );
  }

  noTaskMsg() {
    return Stack(
      children: [
        AnimatedPositioned(
          duration: const Duration(milliseconds: 2000),
          child: RefreshIndicator(
            onRefresh: onRefresh,
            child: SingleChildScrollView(
              child: Wrap(
                alignment: WrapAlignment.center,
                crossAxisAlignment: WrapCrossAlignment.center,
                direction: SizeConfig.orientation == Orientation.landscape
                    ? Axis.horizontal
                    : Axis.vertical,
                children: [
                  SizeConfig.orientation == Orientation.landscape
                      ? const SizedBox(height: 6)
                      : const SizedBox(height: 220),
                  SvgPicture.asset(
                    'assets/task.svg',
                    height: 90,
                    semanticsLabel: 'Tesk',
                    // ignore: deprecated_member_use
                    color: primaryClr.withOpacity(0.5),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 10),
                    child: Text('no tasks',
                        style: subTitleStyle, textAlign: TextAlign.center),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }

  showBottomSheet(BuildContext context, Task task) {
    Get.bottomSheet(
      SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(top: 4),
          width: SizeConfig.screenWidth,
          height: (SizeConfig.orientation == Orientation.landscape)
              ? (task.isCompleted == 1
                  ? SizeConfig.screenHeight * 0.6
                  : SizeConfig.screenHeight * 0.8)
              : (task.isCompleted == 2
                  ? SizeConfig.screenHeight * 0.30
                  : SizeConfig.screenHeight * 0.39),
          color: Get.isDarkMode ? darkHeaderClr : Colors.white,
          child: Column(
            children: [
              Flexible(
                child: Container(
                  height: 9,
                  width: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Get.isDarkMode ? Colors.grey[600] : Colors.grey[300],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              task.isCompleted == 1
                  ? Container()
                  : buildBottomSheet(
                      label: 'Task Competed',
                      clr: primaryClr,
                      onTap: () {
                        notifyHelper.cancelNotification(task);
                        taskEditingController.markUsCompleted(task.id!);
                        Get.back();
                      }),
              buildBottomSheet(
                  label: 'delete ',
                  clr: Colors.red,
                  onTap: () {
                    notifyHelper.cancelNotification(task);
                    taskEditingController.deleteTasks(task);

                    Get.back();
                  }),
              Divider(
                color: Get.isDarkMode ? Colors.grey : darkGreyClr,
              ),
              buildBottomSheet(
                  label: 'cancel ',
                  clr: primaryClr,
                  onTap: () {
                    Get.back();
                  }),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }

  buildBottomSheet({
    required String? label,
    required Color clr,
    required Function() onTap,
    bool isClose = false,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 4),
        height: 65,
        width: SizeConfig.screenWidth * 0.9,
        decoration: BoxDecoration(
          border: Border.all(
            width: 2,
            color: isClose
                ? Get.isDarkMode
                    ? Colors.grey[600]!
                    : Colors.grey[300]!
                : clr,
          ),
          borderRadius: BorderRadius.circular(20),
          color: isClose ? Colors.transparent : clr,
        ),
        child: Center(
          child: Text(
            label!,
            style:
                isClose ? titleStyle : titleStyle.copyWith(color: Colors.white),
          ),
        ),
      ),
    );
  }
}