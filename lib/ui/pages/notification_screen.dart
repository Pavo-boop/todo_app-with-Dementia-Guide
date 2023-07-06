// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_app/ui/theme.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({
    Key? key,
    this.payload,
  }) : super(key: key);
  final String? payload;

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  String? _payload = '';

  @override
  void initState() {
    super.initState();
    _payload = widget.payload;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(
            Icons.arrow_back_ios,
            color: Get.isDarkMode ? Colors.white : darkGreyClr,
          ),
        ),
        elevation: 0,
        backgroundColor: context.theme.backgroundColor,
        title: Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                _payload.toString().split('|')[0],
                style: TextStyle(
                    color: Get.isDarkMode
                        ? Colors.white
                        : const Color(0xFF121212)),
              ),
              const SizedBox(
                width: 35,
              )
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'hello ',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 26,
                      color: Get.isDarkMode
                          ? Colors.white
                          : const Color(0xFF121212)),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'You have new reminder',
                  style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 26,
                      color: Get.isDarkMode
                          ? Colors.white
                          : const Color(0xFF121212)),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
                child: Container(
              padding: const EdgeInsets.only(left: 30, right: 30, top: 10),
              margin: const EdgeInsets.only(left: 30, right: 30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: const Color(0xFF4e5ae8),
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      children: [
                        Icon(
                          Icons.text_format,
                          color: Colors.white,
                          size: 35,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Title',
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Text(
                      _payload.toString().split('|')[0],
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Row(
                      children: [
                        Icon(
                          Icons.description,
                          color: Colors.white,
                          size: 30,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Description',
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      _payload.toString().split('|')[1],
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Row(
                      children: [
                        Icon(
                          Icons.calendar_today_outlined,
                          color: Colors.white,
                          size: 30,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Date',
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      _payload.toString().split('|')[2],
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
              ),
            )),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
