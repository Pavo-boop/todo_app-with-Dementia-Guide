import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_app/ui/pages/guide/food_screens/fish.dart';
import 'package:todo_app/ui/pages/guide/food_screens/fruits_and_vegetables.dart';
import 'package:todo_app/ui/pages/hoem_screen.dart';
import 'package:todo_app/ui/pages/guide/food_screens/nuts.dart';
import 'package:todo_app/ui/theme.dart';
import '../../widget/catagore.dart';

class FoodScreen extends StatelessWidget {
  final bool isEng;
  const FoodScreen({Key? key, required this.isEng}) : super(key: key);
  @override
  Widget build(BuildContext context) {
   if (kDebugMode) {
     print(isEng);
   }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Get.isDarkMode ? darkGreyClr : Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_outlined,
            color: Get.isDarkMode ? Colors.white : darkGreyClr,
          ),
          onPressed: () {
            Navigator.of(context).pop(const HomeScreen());
          },
        ),
        title: Text(
          isEng? 'Best Foods': 'أفضل الأطعمة',
          style: TextStyle(
            color: Get.isDarkMode ? Colors.white : darkGreyClr,
          ),
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 10.0, left: 10.0),
                  child: catager(
                     isEng: isEng, nameA: 'الفواكة و الخضروات ',
                    name: 'Fruits and Vegetables',
                    photo: 'assets/food.png',
                    tap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute<Object>(
                          builder: (context) =>  FruitsandVegetables(isEng: isEng,),
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
                     isEng: isEng, nameA: 'المكسّرات',
                    name: 'Nuts',
                    photo: 'assets/nuts.png',
                    tap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute<Object>(
                          builder: (context) =>  Nuts(isEng:isEng,),
                        ),
                      );
                    },
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: 40,),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 15.0),
                child: catager(
                   isEng: isEng, nameA: 'الاسماك',
                    name: 'Fish',
                    photo: 'assets/fish.png',
                    tap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute<Object>(
                          builder: (context) => FishScreen(isEng: isEng),
                        ),
                      );
                    }),
              ),
              
            ],
          )
        ],
      ),
    );
  }
}
