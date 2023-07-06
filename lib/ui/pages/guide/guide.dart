import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:todo_app/main.dart';
import 'package:todo_app/ui/pages/guide/avoide.dart';
import 'package:todo_app/ui/pages/guide/deal%20with%20dementia%20patients.dart';
import 'package:todo_app/ui/pages/guide/dementia.dart';
import 'package:todo_app/ui/pages/guide/food.dart';
import 'package:todo_app/ui/pages/guide/see_doc.dart';
import '../../theme.dart';
import '../../widget/catagore.dart';

class Guide extends StatefulWidget {
  bool isEng = true;
   Guide({Key? key, required this.isEng}) : super(key: key);

  @override
  State<Guide> createState() => _GuideState();
}

class _GuideState extends State<Guide> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Get.isDarkMode ? darkGreyClr : Colors.white,
        // leading: IconButton(
        //   icon: Icon(
        //     Icons.arrow_back_ios_outlined,
        //     color: Get.isDarkMode ? Colors.white : darkGreyClr,
        //   ),
        //   onPressed: () {
        //     Navigator.of(context).pop(const HomeScreen());
        //   },
        // ),
        title: Text(
          isEng?
          'Dementia Guideline': 'دليل الخرف',
          style: TextStyle(
            color: Get.isDarkMode ? Colors.white : darkGreyClr,
          ),
        ),
        actions: [
           IconButton(onPressed: (){
            setState(() {
              isEng = !isEng;
              print('$isEng');
            });
          }, icon: Icon(Icons.language,size: 24,
              color: Get.isDarkMode ? Colors.white : darkGreyClr,),),
        ],
      ),
      body: Row(
        children: [
          Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 10.0, left: 10.0),
                  child: catager(
                    isEng:isEng,
                    nameA :'الفواكة و الخضروات ' ,
                    name: 'Fruits and Vegetables',
                    photo: 'assets/diet.png',
                    tap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute<Object>(
                          builder: (context) =>  FoodScreen(isEng:isEng,),
                        ),
                      );
                    }, 
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: catager(
                     nameA: 'خرف',
                    isEng: isEng ,
                    name: 'what is Dementia',
                    photo: 'assets/mental-health.png',
                    tap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute<Object>(
                          builder: (context) =>  Dementia(isEng: isEng,),
                        ),
                      );
                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 10.0, left: 10.0),
                  child: catager(
                    isEng: isEng,
                      nameA: 'عندما ترى الطبيب',
                      name: 'When see doctor',
                      photo: 'assets/doctor.png',
                      tap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute<Object>(
                            builder: (context) =>  SeeDoctor(isEng:isEng),
                          ),
                        );
                      },),
                ),
              ),
            ],
          ),
          const SizedBox(width: 50,),
          Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: catager(
                    isEng: isEng, nameA: 'لازم تتجنب',
                      name: 'Avoid',
                      photo: 'assets/prohibition.png',
                      tap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute<Object>(
                            builder: (context) =>  Avoid(isEng:isEng,),
                          ),
                        );
                      }, ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 290, right: 20.0),
                child: catager(
                  isEng: isEng, nameA: 'ازاي تتعامل معاهم',
                  name: 'how to deal with them',
                  photo: 'assets/help.png',
                  tap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute<Object>(
                        builder: (context) =>  DealWithThem(isEng: isEng,),
                      ),
                    );
                  },
                ),
              ),

            ],
          ),
        ],
      ),

    );
  }
}
