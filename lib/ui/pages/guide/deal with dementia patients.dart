// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_app/ui/pages/guide/guide.dart';

import '../../theme.dart';

class DealWithThem extends StatelessWidget {
  final isEng;
  const DealWithThem({Key? key, this.isEng}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        backgroundColor: Get.isDarkMode ? darkGreyClr : Colors.white,
        title: Text(
          isEng?
          'How to DealWithThem':'كيفية التعامل معهم؟\n',
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
            text:TextSpan(
                 text: isEng? '''If you are caring for someone with Alzheimer's disease or a related dementia, your role in managing daily tasks will increase as the disease progresses. Consider practical tips that can help the person with dementia participate as much as possible and enable you to manage tasks effectively.\n'''
:'''إذا كنت تعتني بشخص مصاب بمرض الزهايمر أو أي خرف ذو صلة، فسيزداد دورك في إدارة المهام اليومية كلما تقدم المرض. يرجى النظر في نصائح عملية يمكن أن تساعد الشخص المصاب بالخرف على المشاركة قدر الإمكان وتمكينك من إدارة المهام بشكل فعال.\n''',
                style: TextStyle(
                    color: Get.isDarkMode ? Colors.white : darkGreyClr,
                fontSize: 18,
                fontWeight: FontWeight.normal),
                children: <InlineSpan>[
                  const WidgetSpan(
                      alignment: PlaceholderAlignment.baseline,
                      baseline: TextBaseline.alphabetic,
                      child: SizedBox(height: 25)),
                  TextSpan(
                    text: isEng?'''Reduce frustrations\n''': 'تقليل الإحباطات\n',
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
                    text: isEng?'A person with dementia might become agitated when once-simple tasks become difficult. \n':'قد يصبح الشخص المصاب بالخرف مضطرباً عندما تصبح المهام البسيطة صعبة.\n',
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
                    text:isEng? 'Dealing with dementia patients can be challenging, but with the right approach and strategies, it is possible to provide compassionate and effective care. Here are some tips for dealing with dementia patients:\n':
                    'يمكن أن يكون التعامل مع مرضى الخرف تحديًا، ولكن مع النهج الصحيح والاستراتيجيات المناسبة، يمكن تقديم رعاية حنونة وفعالة. فيما يلي بعض النصائح للتعامل مع مرضى الخرف:\n',
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
                    text: isEng? ''' Communicate clearly and calmly: Individuals with dementia may have difficulty understanding and following complex instructions or conversations. Speak clearly and calmly, using simple language and short sentences. Use nonverbal cues, such as facial expressions and gestures, to help convey your message.\n''':
                    '''التواصل بوضوح وهدوء: قد يواجه الأفراد المصابون بالخرف صعوبة في فهم واتباع التعليمات المعقدة أو المحادثات. تحدث بوضوح وهدوء، باستخدام لغة بسيطة وجمل قصيرة. استخدم الإشارات غير اللفظية، مثل التعابير الوجهية والإيماءات، للمساعدة في نقل رسالتك.\n''',
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
                    text: isEng?'Use positive reinforcement:\n':'استخدم التعزيز الإيجابي:\n',
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
                    text: isEng? ''' Individuals with dementia may become frustrated or agitated easily. Use positive reinforcement, such as praise and encouragement, to help reinforce positive behaviors and reduce negative behaviors.\n''':
                    '''قد يصبح الأفراد المصابون بالخرف محبطين أو مضطربين بسهولة. استخدم التعزيز الإيجابي، مثل الثناء والتشجيع، للمساعدة في تعزيز السلوكيات الإيجابية وتقليل السلوكيات السلبية.\n''',
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
                    text: isEng?'Establish routines:\n':'إنشاء روتينات:\n',
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
                    text: isEng? ''' Routines can help provide structure and stability for individuals with dementia. Establish a consistent daily routine for activities such as meals, hygiene, and exercise.\n''':
                    '''يمكن للروتينات أن تساعد في توفير الهيكل والاستقرار للأفراد المصابين بالخرف. إنشاء روتين يومي ثابت لأنشطة مثل الوجبات والنظافة الشخصية والتمارين الرياضية.\n''',
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
                    text: isEng?'Use memory aids:\n' :'استخدام وسائل المساعدة الذاكرة:\n',
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
                    text: isEng?'''Memory aids, such as calendars, reminders, and labels, can help individuals with dementia remember important information and tasks.\n''':
                    '''تستخدم وسائل المساعدة الذاكرة، مثل التقاويم والتذكيرات والتسميات، للمساعدة في تذكر المعلومات والمهام الهامة للأفراد المصابين بالخرف.\n''',
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
                    text: isEng? 'Stay calm and patient:\n':'البقاء هادئًا وصبورًا:\n',
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
                    text:isEng? ''' Dealing with dementia patients can be challenging, but it is important to remain calm and patient. Avoid arguing or correcting the person with dementia, as this can cause further confusion and agitation.\n''':
                   ''''يمكن أن يكون التعامل مع مرضى الخرف تحديًا، ولكن من المهم البقاء هادئًا وصبورًا. تجنب المناقشة أو تصحيح الشخص المصاب بالخرف، حيث يمكن أن يتسبب ذلك في المزيد من الارتباك والاضطراب.\n''',
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
                    text:isEng?'Provide opportunities for social interaction:\n':'توفير فرص للتفاعل الاجتماعي:\n',
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
                    text: isEng? ''' Social interaction can help individuals with dementia maintain social skills and reduce feelings of isolation. Provide opportunities for social interaction, such as group activities or outings.\n''':
                    '''يمكن أن يساعد التفاعل الاجتماعي الأفراد المصابين بالخرف على الحفاظ على مهاراتهم الاجتماعية وتقليل الشعور بالعزلة. توفير فرص للتفاعل الاجتماعي، مثل الأنشطة الجماعية أو الرحلات.\n''',
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
                    text:isEng? 'Manage symptoms:\n':'إدارة الأعراض:\n',
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
                    text:isEng? ''' Individuals with dementia may experience a range of symptoms, including agitation, anxiety, and depression. Work with healthcare professionals to developa care plan that addresses these symptoms and provides appropriate interventions, such as medication or behavioral therapy.\n''':
                    '''قد يعاني الأفراد المصابون بالخرف من مجموعة متنوعة من الأعراض، بما في ذلك الارتباك والقلق والاكتئاب. يعمل مع المتخصصين في الرعاية الصحية لوضع خطة رعاية تتناول هذه الأعراض وتوفر التدخلات المناسبة، مثل الأدوية أو العلاج السلوكي.\n''',
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
                    text: isEng?'Provide a safe environment:\n':'توفير بيئة آمنة:\n',
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
                    text: isEng? '''Individuals with dementia may be at risk of falls, wandering, or other safety concerns. Ensure that the environment is safe, with appropriate lighting, secure locks, and safety equipment as needed.\n''':
                    '''قد يكون الأفراد المصابون بالخرف عرضة للسقوط أو التجول أو مخاطر أمنية أخرى. تأكد من أن البيئة آمنة، مع إضاءة مناسبة وأقفال آمنة وتجهيزات السلامة حسب الحاجة.\n''',
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
                    text:isEng?'Provide caregiver support: \n' :'توفير الدعم للمقدمين للرعاية:\n',
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
                    text: isEng? ''' Caring for someone with dementia can be challenging and stressful. Provide support and resources to caregivers, such as respite care, counseling, and education.\n''':
                    '''
يمكن أن يكون العناية بشخص مصاب بالخرف تحدٍ ومرهق. توفير الدعم والموارد للمقدمين للرعاية، مثل الرعاية المؤقتة والاستشارات والتعليم، يساعد على التخفيف من الضغوط والتحديات التي يواجهونها.\n''',
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
                    text:isEng? ''' It is important to remember that each individual with dementia is unique and may require different strategies and approaches. Working with healthcare professionals, caregivers, and advocacy organizations can help ensure that individuals with dementia receive the best possible care and support.\n''':
                    '''من المهم أن نتذكر أن كل فرد مصاب بالخرف فريد من نوعه وقد يحتاج إلى استراتيجيات ونهج مختلفة. يعمل مع المتخصصين في الرعاية الصحية والمقدمين للرعاية ومنظمات الدعم يساعد على ضمان حصول الأفراد المصابين بالخرف على أفضل رعاية ودعم ممكنين.\n''',
                    style: TextStyle(
                        color: Get.isDarkMode ? Colors.white : darkGreyClr,
                        fontSize: 18,
                        fontWeight: FontWeight.normal),
                  ),


                ]),
          ),
        ),
      ),
    );
  }
}
