import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../theme.dart';

class FruitsandVegetables extends StatelessWidget {
  final bool isEng;
  const FruitsandVegetables({Key? key, required this.isEng}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Get.isDarkMode ? darkGreyClr : Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Get.isDarkMode ? Colors.white : darkGreyClr,
          ),
        ),
        title: Text(
          isEng?
          'Fruits and Vegetables\n': 'الفواكه والخضروات\n',
          style: TextStyle(
            color: Get.isDarkMode ? Colors.white : darkGreyClr,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: RichText(
            text:  TextSpan(
              text: isEng? '1. Leafy Greens \n': '1.الخضراوات الورقية\n',
              style: TextStyle(
                  color: Get.isDarkMode ? Colors.white : darkGreyClr,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
              children: <InlineSpan>[
                const WidgetSpan(
                  alignment: PlaceholderAlignment.baseline,
                  baseline: TextBaseline.alphabetic,
                  child: SizedBox(height: 25),
                ),
                TextSpan(
                  text: isEng?
                      'Kale,collard greens, spinach, and Swiss chard are just some leafy greens high in essential B vitamins like folate and B9 that can help reduce depression, while also boosting cognition. Instead of just eating leafy greens in salads, add these powerhouse vegetables to soups, stews, and chilis; you can also puree them and add to sauces, pesto, and hummus.\n':
                      'الكرنب، واللفت الأخضر، والسبانخ والشمندر السويسري هي بعض الخضراوات الورقية الغنية بفيتامينات ب الأساسية مثل الفولات و B9 التي يمكن أن تساعد على تقليل الاكتئاب، كما أنها تعزز الإدراك. بدلاً من تناول الخضراوات الورقية فقط في السلطات، يمكن إضافة هذه الخضروات القوية إلى الحساء والمرق والمطبوخات الحارة؛ كما يمكن خلطها وإضافتها إلى الصلصات والبيستو والحمص.\n',
                  style: TextStyle(
                      color: Get.isDarkMode ? Colors.white : darkGreyClr,
                      fontSize: 18,
                      fontWeight: FontWeight.normal),
                ),
                const WidgetSpan(
                    alignment: PlaceholderAlignment.baseline,
                    baseline: TextBaseline.alphabetic,
                    child: SizedBox(height: 25)),
                TextSpan(
                    text: isEng? '2.Berries\n':'2.التوت\n',
                    style: TextStyle(
                        color: Get.isDarkMode ? Colors.white : darkGreyClr,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                    children: <InlineSpan>[
                      const WidgetSpan(
                          alignment: PlaceholderAlignment.baseline,
                          baseline: TextBaseline.alphabetic,
                          child: SizedBox(height: 25)),
                      TextSpan(
                        text: isEng?
                           'Raspberries, blueberries, blackberries, and cherries all contain a flavonoid called anthocyanin that stops the progression of brain damage triggered by free radicals. These and other berries are also packed with antioxidants and a wealth of vitamins that help reduce inflammation and help you maintain good brain health.\n':
                           'التوت الأحمر، والتوت الأزرق، والتوت الأسود، والكرز يحتوون جميعًا على مركب الأنثوسيانين الذي يوقف تقدم الضرر الذي يحدث في الدماغ نتيجة الجذور الحرة. وتحتوي هذه التوت وغيرها من التوت على مضادات الأكسدة وكمية كبيرة من الفيتامينات التي تساعد على تقليل الالتهابات وتساعدك على الحفاظ على صحة جيدة للدماغ.\n',

                        style: TextStyle(
                            color: Get.isDarkMode ? Colors.white : darkGreyClr,
                            fontSize: 18,
                            fontWeight: FontWeight.normal),
                      )
                    ]),
                const WidgetSpan(
                    alignment: PlaceholderAlignment.baseline,
                    baseline: TextBaseline.alphabetic,
                    child: SizedBox(height: 25)),
                TextSpan(
                    text: isEng? '3.Cruciferous Vegetables\n':'3.الخضروات الصليبية\n',
                    style: TextStyle(
                        color: Get.isDarkMode ? Colors.white : darkGreyClr,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                    children: <InlineSpan>[
                      const WidgetSpan(
                          alignment: PlaceholderAlignment.baseline,
                          baseline: TextBaseline.alphabetic,
                          child: SizedBox(height: 25)),
                      TextSpan(
                        text:isEng?
                            'Broccoli, cauliflower, brussels sprouts, and other cruciferous vegetables are high in B vitamins and carotenoids that have the ability to reduce levels of homocysteine — an amino acid linked to cognitive decline, brain atrophy, and dementia. Try sautéing cruciferous vegetables in garlic and olive oil or sneak these superfoods into smoothies, soups, and condiments.\n':
                            'البروكلي، والقرنبيط، والكرنب البروكسلي، وغيرها من الخضروات الصليبية غنية بفيتامينات ب والكاروتينويدات التي تقلل من مستويات الهوموسيستين - حمض أميني يرتبط بالتدهور الإدراكي وتقاص الدماغ والخرف. جرب تقليب الخضروات الصليبية في الثوم وزيت الزيتون أو إضافة هذه الأطعمة الخارقة إلى العصائر الصحية والشوربات والصلصات.\n',
                        style: TextStyle(
                            color: Get.isDarkMode ? Colors.white : darkGreyClr,
                            fontSize: 18,
                            fontWeight: FontWeight.normal),
                      ),
                      const WidgetSpan(
                          alignment: PlaceholderAlignment.baseline,
                          baseline: TextBaseline.alphabetic,
                          child: SizedBox(height: 25)),
                    ]),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
