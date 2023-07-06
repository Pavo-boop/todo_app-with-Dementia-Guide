// ignore_for_file: unused_local_variable
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_native_timezone/flutter_native_timezone.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:rxdart/rxdart.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'package:timezone/timezone.dart' as tz;
import 'package:todo_app/models/tasks.dart';
import '/ui/pages/notification_screen.dart';

class NotifyHelper {
  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
  FlutterLocalNotificationsPlugin();

  String selectedNotificationPayload = '';

  final BehaviorSubject<String> selectNotificationSubject =
  BehaviorSubject<String>();
  initializeNotification() async {
    tz.initializeTimeZones();
    _configureSelectNotificationSubject();
    await _configureLocalTimeZone();
    // await requestIOSPermissions(flutterLocalNotificationsPlugin);
    final DarwinInitializationSettings initializationSettingsIOS =
    DarwinInitializationSettings(
      requestSoundPermission: true,
      requestBadgePermission: true,
      requestAlertPermission: true,
      onDidReceiveLocalNotification: onDidReceiveLocalNotification,
    );

    const AndroidInitializationSettings initializationSettingsAndroid =
    AndroidInitializationSettings('appicon');

    final InitializationSettings initializationSettings =
    InitializationSettings(
      iOS: initializationSettingsIOS,
      android: initializationSettingsAndroid,
    );
    await flutterLocalNotificationsPlugin.initialize(
      initializationSettings,
        onDidReceiveNotificationResponse:  (NotificationResponse notificationResponse) async {
         final String? payload = notificationResponse.payload;
         if (notificationResponse.payload != null) {
           debugPrint('notification payload: $payload');
        }
        selectNotificationSubject.add(payload!);
      },
    );
  }

  displayNotification({required String title, required String body}) async {
    print('doing test');
    var androidPlatformChannelSpecifics = const AndroidNotificationDetails(
        'your channel id', 'your channel name',
        channelDescription: 'your channel description'
        ,
        importance: Importance.max, priority: Priority.high);
    var iOSPlatformChannelSpecifics = const DarwinInitializationSettings();
    var platformChannelSpecifics = NotificationDetails(
        android: androidPlatformChannelSpecifics,
        iOS: const DarwinNotificationDetails());
    await flutterLocalNotificationsPlugin.show(
      0,
      title,
      body,
      platformChannelSpecifics,
      payload: 'Default_Sound',
    );
  }
  cancelNotification(Task task) async{
    await flutterLocalNotificationsPlugin.cancel(task.id!);
  }cancelNotificationAll() async{
    await flutterLocalNotificationsPlugin.cancelAll();
  }

    scheduledNotification(
      int hour,
      int minutes,
      Task task,
      ) async {
    const androidPlatformChannelSpecifics =  AndroidNotificationDetails(
        'your channel id', 'your channel name',
        channelDescription: 'repeating description',
         importance: Importance.max,
         priority: Priority.high
        );
    const NotificationDetails platformChannelSpecifics = NotificationDetails(
        android: androidPlatformChannelSpecifics,
        iOS:  DarwinNotificationDetails());

    final scheduledDate = _nextInstanceOfTenAM(
        hour, minutes, task.remind!, task.repeat!, task.date!);

    await flutterLocalNotificationsPlugin.zonedSchedule(
      task.id!,
      task.title,
      task.note,
      scheduledDate.toLocal(),
      platformChannelSpecifics,
      uiLocalNotificationDateInterpretation:
      UILocalNotificationDateInterpretation.absoluteTime,
      payload: '${task.title}|${task.note}|${task.startTime}',
      matchDateTimeComponents: DateTimeComponents.time,
      androidAllowWhileIdle: true,
    );
  }

tz.TZDateTime _nextInstanceOfTenAM(
      int hour, int minutes, int remind, String repeat, String date) {
    final tz.TZDateTime now = tz.TZDateTime.now(tz.local);
    if (kDebugMode) {
      print('now = $now');
    }

    var formattedDate = DateFormat.yMd().parse(date);
    final tz.TZDateTime fd = tz.TZDateTime.from(formattedDate, tz.local);

    tz.TZDateTime scheduledDate =
    tz.TZDateTime(tz.local, fd.year, fd.month, fd.day, hour, minutes);
    if (kDebugMode) {
      print('scheduledDate = $scheduledDate');
    }

    

    scheduledDate = afterRemind(remind, scheduledDate);
    if (scheduledDate.isBefore(now))
        {

      if(repeat == 'Daily'){
        scheduledDate = tz.TZDateTime(tz.local, now.year, now.month, (formattedDate.day)+1, hour, minutes);
      }
      if(repeat == 'Weekly'){
        scheduledDate = tz.TZDateTime(tz.local, now.year, now.month, (formattedDate.day)+7, hour, minutes);
      }
      if(repeat == 'Monthly'){
        scheduledDate = tz.TZDateTime(tz.local, now.year, (formattedDate.month)+1 , formattedDate.day, hour, minutes);
      }
      }
    scheduledDate = afterRemind(remind, scheduledDate);
    if (kDebugMode) {
      print('Next scheduledDate = $scheduledDate');
    }

    return scheduledDate;
  }

 tz.TZDateTime afterRemind(int remind, tz.TZDateTime scheduledDate) {
    if (remind == 0) {
      scheduledDate = scheduledDate.subtract(const Duration(minutes: 0));
    }
    if (remind == 5) {
      scheduledDate = scheduledDate.subtract(const Duration(minutes: 5));
    }

    if (remind == 10) {
      scheduledDate = scheduledDate.subtract(const Duration(minutes: 10));
    }

    if (remind == 15) {
      scheduledDate = scheduledDate.subtract(const Duration(minutes: 15));
    }

    if (remind == 20) {
      scheduledDate = scheduledDate.subtract(const Duration(minutes: 20));
    }
    return scheduledDate ;
  }

  void requestIOSPermissions() {
    flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
        IOSFlutterLocalNotificationsPlugin>()
        ?.requestPermissions(
      alert: true,
      badge: true,
      sound: true,
    );
  }

  Future<void> _configureLocalTimeZone() async {
    tz.initializeTimeZones();
    final String timeZoneName = await FlutterNativeTimezone.getLocalTimezone();
    tz.setLocalLocation(tz.getLocation(timeZoneName));
  }



//Older IOS
  Future onDidReceiveLocalNotification(
      int id, String? title, String? body, String? payload) async {

    Get.dialog( Text(body!));
  }

  void _configureSelectNotificationSubject() {
    selectNotificationSubject.stream.listen((String payload) async {
      debugPrint('My payload is $payload');
      await Get.to(() => NotificationScreen(payload:payload));
    });
  }
}
