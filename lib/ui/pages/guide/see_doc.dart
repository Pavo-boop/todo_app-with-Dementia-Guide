import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../theme.dart';
import 'guide.dart';

class SeeDoctor extends StatelessWidget {
  const SeeDoctor({Key? key, required this.isEng}) : super(key: key);
  final bool isEng;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        backgroundColor: Get.isDarkMode ? darkGreyClr : Colors.white,
        title: Text(
          isEng?
          'when you should see a doctor':'عندما يجب عليك رؤية الطبيب',
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
               Guide(isEng: isEng,),
            );
          },
        ),
      ),
            body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: RichText(
            text:  TextSpan(
                text: isEng? 'How is dementia diagnosed ?\n':'كيفية تشخيص الخرف؟\n',
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
                    'A healthcare provider can perform tests on attention, memory, problem solving and other cognitive abilities to see if there is cause for concern. A physical exam, blood tests, and brain scans like a CT or MRI can help determine an underlying cause.\n'
                    :'يمكن لمقدم الرعاية الصحية إجراء اختبارات على الانتباه والذاكرة وحل المشكلات والقدرات الإدراكية الأخرى لمعرفة ما إذا كان هناك سبب للقلق. يمكن أن يساعد الفحص الطبي الشامل والتحاليل الدموية وفحوصات الدماغ مثل CT أو MRI في تحديد السبب الكامن وراء المشكلة.\n',
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
                    text: isEng? 'Memory loss:\n':'فقدان الذاكرة:\n',
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
                    text: isEng? 'Difficulty remembering recent events, names, faces, or places.\n':'صعوبة في تذكر الأحداث الأخيرة، الأسماء، الوجوه، أو الأماكن.\n',
                    style: TextStyle(
                        color: Get.isDarkMode ? Colors.white : darkGreyClr,
                        fontSize: 18,
                        fontWeight: FontWeight.normal),
                  ),
                     TextSpan(
                    text: isEng? 'Confusion\n':'الارتباك\n',
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
                    text:isEng? 'Difficulty understanding simple instructions or following conversations.\n':'صعوبة في فهم التعليمات البسيطة أو متابعة المحادثات.\n',
                    style: TextStyle(
                        color: Get.isDarkMode ? Colors.white : darkGreyClr,
                        fontSize: 18,
                        fontWeight: FontWeight.normal),
                  ), TextSpan(
                    text:isEng? 'Language problems:\n':'مشاكل في اللغة.\n',
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
                    text: isEng? 'Difficulty finding the right words or understanding what others are saying.\n':'صعوبة في إيجاد الكلمات المناسبة أو فهم ما يقوله الآخرون.\n',
                    style: TextStyle(
                        color: Get.isDarkMode ? Colors.white : darkGreyClr,
                        fontSize: 18,
                        fontWeight: FontWeight.normal),
                  ), TextSpan(
                    text: isEng? 'Problem-solving:\n':'حل المشكلات:\n',
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
                    text: isEng? 'Difficulty with simple tasks such as balancing a checkbook or making a phone call.\n':'صعوبة في القيام بالمهام البسيطة مثل موازنة دفتر الشيكات أو إجراء مكالمة هاتفية.\n',
                    style: TextStyle(
                        color: Get.isDarkMode ? Colors.white : darkGreyClr,
                        fontSize: 18,
                        fontWeight: FontWeight.normal),
                  ), TextSpan(
                    text: isEng? 'Personality changes:\n':'تغيرات في الشخصية:\n',
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
                    text: isEng? ' Mood swings, irritability, or apathy.\n':'تقلبات المزاج، السعة، أو اللامبالاة.\n',
                    style: TextStyle(
                        color: Get.isDarkMode ? Colors.white : darkGreyClr,
                        fontSize: 18,
                        fontWeight: FontWeight.normal),
                  ), TextSpan(
                    text: isEng? 'Changes in behavior:\n':'تغيرات في السلوك:\n',
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
                    text: isEng? 'Wandering, getting lost, or becoming increasingly dependent on others\n':'التجول، الضياع، أو الاعتماد المتزايد على الآخرين.\n',
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
                    text: isEng? '''Dementia is a progressive brain disorder that causes memory loss and other cognitive decline. There is no cure for dementia, but early diagnosis and treatment can help to slow the progression of the disease and improve quality of life for the person with dementia and their loved ones.

If you are concerned that you or someone you know may have dementia, it is important to see a doctor for a diagnosis. There is no one test that can diagnose dementia, but a doctor can use a combination of tests, such as a physical exam, neurological exam, and cognitive assessment, to make a diagnosis.

Once a diagnosis of dementia is made, the doctor can recommend treatment options, such as medications, lifestyle changes, and supportive care. Treatment can help to improve quality of life for the person with dementia and their loved ones.\n'''
:'''الخرف هو اضطراب تدريجي في الدماغ يسبب فقدان الذاكرة وتراجعًا في القدرات الإدراكية الأخرى. لا يوجد علاج للخرف، ولكن يمكن أن يساعد التشخيص المبكر والعلاج على تباطؤ تقدم المرض وتحسين جودة الحياة للشخص المصاب بالخرف وأحبائه.

إذا كنت قلقًا من أنك أو شخص تعرفه قد يعاني من الخرف، من المهم رؤية الطبيب للحصول على التشخيص الصحيح. لا يوجد اختبار واحد يمكنه تشخيص الخرف، ولكن يمكن للطبيب استخدام مجموعة من الاختبارات، مثل الفحص الطبي الشامل والفحص العصبي والتقييم الإدراكي، لتشخيص الحالة.

بمجرد تشخيص الخرف، يمكن للطبيب توصية بخيارات العلاج، مثل الأدوية وتغييرات نمط الحياة والرعاية الداعمة. يمكن للعلاج أن يساعد على تحسين جودة الحياة للشخص المصاب بالخرف وأحبائه.\n''',
                    style: TextStyle(
                        color: Get.isDarkMode ? Colors.white : darkGreyClr,
                        fontSize: 18,
                        fontWeight: FontWeight.normal),
                  ),
                  TextSpan(
                    text: isEng? 'Here are some tips for talking to your doctor about dementia:\n':'إليك بعض النصائح للتحدث مع طبيبك حول الخرف:\n',
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
                    text: isEng? '''-Be prepared. Before your appointment, make a list of your symptoms and any other concerns you have.

-Be clear about your goals. What do you hope to achieve by talking to your doctor? Do you want to know if you have dementia? Do you want to know about treatment options?

-Be honest. Tell your doctor about all of your symptoms, even if you think they are not important.

-Be open to learning more. Your doctor can provide you with information about dementia, treatment options, and resources for support.\n'''
:'''- كن مستعدًا، قبل موعد الطبيب، أعد قائمة بأعراضك وأي مخاوف أخرى لديك.

- كن واضحًا بشأن أهدافك. ما الذي تأمل في تحقيقه من خلال التحدث إلى طبيبك؟ هل تريد معرفة ما إذا كانت لديك خرف؟ هل تريد معرفة خيارات العلاج؟

- كن صادقًا. أخبر طبيبك عن جميع أعراضك، حتى لو كنت تعتقد أنها غير مهمة.

- كن مستعدًا للتعلم أكثر. يمكن لطبيبك تزويدك بمعلومات حول الخرف وخيارات العلاج وموارد الدعم.\n''',
                    style: TextStyle(
                        color: Get.isDarkMode ? Colors.white : darkGreyClr,
                        fontSize: 18,
                        fontWeight: FontWeight.normal),
          ),]),
          ),
        ),
      ),
    );
  }
}
