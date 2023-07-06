import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_app/ui/pages/guide/food.dart';

import '../../../theme.dart';

class FishScreen extends StatelessWidget {
  final bool isEng;
  const FishScreen({Key? key, required this.isEng}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Get.isDarkMode ? darkGreyClr : Colors.white,
        title: Text(
          isEng? 'Fish': 'الاسماك',
          style: TextStyle(
            color: Get.isDarkMode ? Colors.white : darkGreyClr,
          ),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Get.isDarkMode ? Colors.white : darkGreyClr,
          ),
          onPressed: () {
            Navigator.of(context).pop(
               FoodScreen(isEng: isEng,),
            );
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: RichText(
            text: TextSpan(
                text: isEng? 'Fish\n':'الاسماك\n',
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
                    'Seafood, in particular fatty fish such as tuna and salmon, is an excellent source of omega-3 fatty acids, which are associated with good brain health and a reduced risk of cognitive decline. The omega-3 fatty acid docosahexaenoic acid (DHA) is especially helpful in this regard, but our bodies cannot produce it on their own so we have to rely on diet. Experts say two to three servings of fish a week is enough to provide your brain with all the benefits of this nutrient.\n':'المأكولات البحرية، وخاصة الأسماك الدهنية مثل التونا والسلمون، هي مصدر ممتاز للأحماض الدهنية أوميغا-3، والتي ترتبط بصحة الدماغ الجيدة وتقليل خطر التدهور الإدراكي. تعتبر حمض الدوكوساهكسانويك (DHA) من الأحماض الدهنية أوميغا-3 مفيدة بشكل خاص في هذا الصدد، ولكن جسمنا لا يستطيع إنتاجه بمفرده لذلك علينا الاعتماد على النظام الغذائي. يقول الخبراء إن تناول وجبتين إلى ثلاث وجبات من الأسماك في الأسبوع كافٍ لتوفير كل فوائد هذا العنصر الغذائي للدماغ.\n',
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
                    text:isEng? 'Omega-3s\n':'أوميغا-3\n',
                    style: TextStyle(
                        color: Get.isDarkMode ? Colors.white : darkGreyClr,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  const WidgetSpan(
                      alignment: PlaceholderAlignment.baseline,
                      baseline: TextBaseline.alphabetic,
                      child: SizedBox(height: 25)),
                  TextSpan(
                    text: isEng?
                    'Olive oil, flax seeds, and fatty fish like tuna, salmon, and mackerel are examples of foods high in omega-3 fatty acids with DHA that helps your brain stay healthy. Many studies prove that omega-3s are effective at fighting and preventing dementia and recommend taking 200 mg of DHA daily to achieve good brain health. However, the average daily intake of DHA in the U.S. is estimated to be only about 80 mg. Make a conscious effort to consume higher amounts of omega-3s or ask your doctor to recommend safe, effective DHA supplements.\n':'زيت الزيتون، وبذور الكتان، والأسماك الدهنية مثل التونا والسلمون والسمك الأسقمري هي أمثلة على الأطعمة الغنية بالأحماض الدهنية أوميغا-3 مع DHA الذي يساعد الدماغ على البقاء صحيًا. تثبت العديد من الدراسات أن أوميغا-3 فعالة في محاربة ومنع الخرف وتوصي بتناول 200 ملغ من DHA يوميًا لتحقيق صحة جيدة للدماغ. ومع ذلك، يُقدر أن التناول اليومي المتوسط لـ DHA في الولايات المتحدة يبلغ حوالي 80 ملغ فقط. يجب بذل جهد متعمد لتناول كميات أعلى من أوميغا-3 أو الاستفسار من الطبيب حول توصية المكملات الغذائية الآمنة والفعالة من DHA.\n',
                    style: TextStyle(
                        color: Get.isDarkMode ? Colors.white : darkGreyClr,
                        fontSize: 18,
                        fontWeight: FontWeight.normal),
                  )
                ]),
          ),
        ),
      ),
    );
  }
}
