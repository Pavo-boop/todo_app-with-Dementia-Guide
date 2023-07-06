import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_app/ui/pages/guide/guide.dart';

import '../../theme.dart';

class Dementia extends StatelessWidget {
   final bool isEng;
  const Dementia({Key? key, required this.isEng}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        backgroundColor: Get.isDarkMode ? darkGreyClr : Colors.white,
        title: Text(
          isEng?
          'What is Dementia':' ما هو الخرف ',
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
                text: isEng? 'About Dementia\n':'حول الخرف\n',
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
                    'Dementia is not a specific disease but is rather a general term for the impaired ability to remember, think, or make decisions that interferes with doing everyday activities. Alzheimer’s disease is the most common type of dementia. Though dementia mostly affects older adults, it is not a part of normal aging.\n':
                    '.الخرف ليس مرضاً محدداً بل هو مصطلح عام يشير إلى القدرة المتدنية على التذكر والتفكير واتخاذ القرارات، مما يعوق القيام بالأنشطة اليومية. مرض الزهايمر هو أكثر أنواع الخرف شيوعاً. على الرغم من أن الخرف يؤثر في الغالب على كبار السن، إلا أنه ليس جزءًا من الشيخوخة الطبيعية.',
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
                    text: isEng? "Isn’t dementia part of normal aging?\n":'هل الخرف جزء من الشيخوخة الطبيعية؟\n',
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
                    'No, many older adults live their entire lives without developing dementia. Normal aging may include weakening muscles and bones, stiffening of arteries and vessels, and some age-related memory changes that may show as:Occasionally misplacing car keys Struggling to find a word but remembering it later Forgetting the name of an acquaintance Forgetting the most recent events Normally, knowledge and experiences built over years, old memories, and language would stay intact.\n':
                    '''لا، فكثير من كبار السن يعيشون حياتهم بأكملها دون أن يتعرضوا للإصابة بالخرف. يمكن أن تشمل الشيخوخة الطبيعية ضعف العضلات والعظام، وتصلب الشرايين والأوعية، وبعض التغيرات المرتبطة بالعمر في الذاكرة والتي قد تتجلى في:

نسيان مفاتيح السيارة بشكل عابر.
صعوبة في العثور على كلمة معينة ولكن تذكرها فيما بعد.
نسيان اسم معارف.
نسيان الأحداث الأخيرة.
عادةً، يبقى المعرفة والخبرات التي اكتسبت على مدار السنوات، والذكريات القديمة، واللغة سليمة''',
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
                    text: isEng? "What are the signs and symptoms of dementia?\n" : 'ما هي علامات وأعراض الخرف؟',
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
                    text:isEng? '''
Because dementia is a general term, its symptoms can vary widely from person to person. People with dementia have problems with Memory, Attention, Communication, Reasoning, judgment, and problem-solving. Visual perception beyond typical age-related changes in vision. Signs that may point to dementia include: 
-Getting lost in a familiar neighborhood
-Using unusual words to refer to familiar objects
-Forgetting the name of a close family member or friend
-Forgetting old memories
-Not being able to complete tasks independently \n''' :'''''',
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
                    text: isEng? "What are the most common types of dementia?\n":'',
                    style: TextStyle(
                        color: Get.isDarkMode ? Colors.white : darkGreyClr,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),),
                    const WidgetSpan(
                      alignment: PlaceholderAlignment.baseline,
                      baseline: TextBaseline.alphabetic,
                      child: SizedBox(height: 25)),
                      TextSpan(
                    text: isEng?'''
Alzheimer’s disease. This is the most common cause of dementia, accounting for 60 to 80 percent of cases. It is caused by specific changes in the brain. The trademark symptom is trouble remembering recent events, such as a conversation that occurred minutes or hours ago, while difficulty remembering more distant memories occurs later in the disease. Other concerns like difficulty with walking or talking or personality changes also come later. Family history is the most important risk factor. Having a first-degree relative with Alzheimer’s disease increases the risk of developing it by 10 to 30 percent.
Vascular dementia. About 10 percent of dementia cases are linked to strokes or other issues with blood flow to the brain. Diabetes, high blood pressure and high cholesterol are also risk factors. Symptoms vary depending on the area and size of the brain impacted. The disease progresses in a step-wise fashion, meaning symptoms will suddenly get worse as the individual gets more strokes or mini-strokes.
Lewy body dementia. In addition to more typical symptoms like memory loss, people with this form of dementia may have movement or balance problems like stiffness or trembling. Many people also experience changes in alertness including daytime sleepiness, confusion or staring spells. They may also have trouble sleeping at night or may experience visual hallucinations (seeing people, objects or shapes that are not actually there).
Fronto-temporal dementia. This type of dementia most often leads to changes in personality and behavior because of the part of the brain it affects. People with this condition may embarrass themselves or behave inappropriately. For instance, a previously cautious person may make offensive comments and neglect responsibilities at home or work. There may also be problems with language skills like speaking or understanding.
Mixed dementia. Sometimes more than one type of dementia is present in the brain at the same time, especially in people aged 80 and older. For example, a person may have Alzheimer’s disease and vascular dementia. It is not always obvious that a person has mixed dementia since the symptoms of one type of dementia may be most prominent or may overlap with symptoms of another type. Disease progression may be faster than with one kind of dementia.
Reversible causes. People who have dementia may have a reversible underlying cause such as side effect of medication, increased pressure in the brain, vitamin deficiency, and thyroid hormone imbalance. Medical providers should screen for reversible causes in patients who are concerning for dementia. \n''':
'''مرض الزهايمر. يعد هذا المرض السبب الأكثر شيوعاً للخرف، حيث يشكل بين 60 إلى 80 بالمئة من حالات الخرف. ينجم عن تغيرات محددة في الدماغ. تتمثل العلامة الفارقة في صعوبة تذكر الأحداث الأخيرة مثل محادثة حدثت قبل دقائق أو ساعات، بينما تحدث صعوبة في تذكر الذكريات الأكثر بعداً لاحقاً في المرض. تظهر المخاوف الأخرى مثل صعوبة المشي أو الحديث أو التغيرات الشخصية فيما بعد. تعتبر الأسرة التاريخ الطبيعي الأكثر أهمية كعامل خطر. حيث يزيد وجود أحد أفراد العائلة من الدرجة الأولى مصاب بمرض الزهايمر من خطر الإصابة به بنسبة تتراوح بين 10 إلى 30 بالمئة.

خرف وعائي. ترتبط حوالي 10 في المئة من حالات الخرف بالسكتات الدماغية أو مشاكل أخرى في تدفق الدم إلى الدماغ. وتشمل العوامل الخطرية السكري وارتفاع ضغط الدم وارتفاع الكوليسترول. وتختلف الأعراض اعتمادًا على المنطقة وحجم الدماغ المتأثرة. يتقدم المرض بطريقة تدريجية، مما يعني أن الأعراض ستزداد سوءًا فجأة كلما تعرض الشخص لمزيد من السكتات الدماغية.

خرف الأجسام اللوية. بالإضافة إلى الأعراض الأكثر شيوعًا مثل فقدان الذاكرة، قد يعاني الأشخاص الذين يعانون من هذا النوع من الخرف من مشاكل في الحركة أو التوازن مثل الإحباط أو الرعشة. كما يعاني العديد من الأشخاص من التغيرات في اليقظة بما في ذلك النعاس النهاري، والارتباك، أو فترات النظر المستمر. قد يواجهون أيضًا صعوبة في النوم ليلاً أو يتعرضون لهلوسات بصرية (رؤية أشخاص أو أشياء أو أشكال غير موجودة بالفعل).

خرف الفص الجبهي الصدغي. يؤدي هذا النوع من الخرف في الغالب إلى تغيرات في الشخصية والسلوك بسبب جزء الدماغ الذي يتأثر. قد يشعر الأشخاص الذين يعانون من هذا الشرط بالإحراج أو السلوك بشكل غير لأنفسهم. على سبيل المثال، قد يقوم شخص كان حذراً سابقًا بالقول بتعليقات جارحة وبإهمال المسؤوليات في المنزل أو العمل. وقد تكون هناك أيضًا مشاكل في مهارات اللغة مثل الكلام أو الفهم.

خرف مختلط. في بعض الأحيان، يكون أكثر من نوع من الخرف موجود في الدماغ في نفس الوقت، خاصةً في الأشخاص الذين تجاوزوا سن الثمانين. على سبيل المثال، قد يعاني الشخص من مرض الزهايمر وخرف وعائي. ليس دائماً واضحاً أن الشخص يعاني من خرف مختلط حيث أن أعراض نوع واحد من الخرف قد تكون الأكثر بروزاً أو قد تتداخل مع أعراض نوع آخر. قد تكون تقدم المرض أسرع من نوع واحد من الخرف.

الأسباب القابلة للعلاج. قد يوجد لدى الأشخاص الذين يعانون من الخرف سببًا قابلاً للعلاج في الأساس مثل آثار جانبية للأدوية، ارتفاع ضغط السائل في الدماغ، نقص فيتامين، أو اضطراب هرمون الغدة الدرقية. يجب على مقدمي الرعاية الصحية الفحص عن الأسباب القابلة للعلاج لدى المرضى الذين يشكلون قلقًا بشأن الخرف. \n''',
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
                    text: isEng? "How is dementia treated?\n": 'كيف يتم علاج الخرف؟\n',
                    style: TextStyle(
                        color: Get.isDarkMode ? Colors.white : darkGreyClr,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),),
                    const WidgetSpan(
                      alignment: PlaceholderAlignment.baseline,
                      baseline: TextBaseline.alphabetic,
                      child: SizedBox(height: 25)),
                   TextSpan(
                    text: isEng?'''
Treatment of dementia depends on the underlying cause. Neurodegenerative dementias, like Alzheimer’s disease, have no cure, though there are medications that can help protect the brain or manage symptoms such as anxiety or behavior changes. Research to develop more treatment options is ongoing.

Leading a healthy lifestyle, including regular exercise, healthy eating, and maintaining social contacts, decreases chances of developing chronic diseases and may reduce number of people with dementia.\n''':
'''يعتمد علاج الخرف على السبب الأساسي للمرض. الخرف العصبي التنكسي مثل مرض الزهايمر ليس له علاج، على الرغم من وجود أدوية يمكن أن تساعد في حماية الدماغ أو إدارة الأعراض مثل القلق أو التغيرات السلوكية. وما زالت الأبحاث جارية لتطوير المزيد من خيارات العلاج.

يقلل الحياة الصحية، بما في ذلك ممارسة التمارين الرياضية بانتظام والتغذية الصحية والحفاظ على الاتصالات الاجتماعية، من فرص الإصابة بالأمراض المزمنة ويمكن أن يقلل من عدد الأشخاص الذين يعانون من الخرف.''',
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
