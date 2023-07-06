import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_app/ui/pages/guide/guide.dart';

import '../../theme.dart';

class Avoid extends StatelessWidget {
  const Avoid({Key? key, required this.isEng}) : super(key: key);
  final bool isEng;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        backgroundColor: Get.isDarkMode ? darkGreyClr : Colors.white,
        title: Text(
          isEng?
          'Avoid' : 'تجنب',
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
              Guide(isEng: isEng),
            );
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: RichText(
            text:  TextSpan(
                text:isEng? 'What increases the risk for dementia?\n':'ما هي العوامل التي تزيد من خطر الإصابة بخرف؟\n',
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
                    text: isEng?'''Age
The strongest known risk factor for dementia is increasing age, with most cases affecting those of 65 years and older
Family history
Those who have parents or siblings with dementia are more likely to develop dementia themselves.
Race/ethnicity
Older African Americans are twice more likely to have dementia than whites. Hispanics 1.5 times more likely to have dementia than whites.
Poor heart health
High blood pressure, high cholesterol, and smoking increase the risk of dementia if not treated properly.
Traumatic brain injury
Head injuries can increase the risk of dementia, especially if they are severe or occur repeatedly.\n'''
:'''أقوى عامل خطر معروف للإصابة بخرف هو التقدم في العمر، حيث يتأثر معظم الأشخاص الذين تجاوزوا سن الستين بالخرف.
تاريخ العائلة
الأشخاص الذين لديهم والدين أو أشقاء يعانون من الخرف أكثر عرضة للإصابة بالخرف أنفسهم.
العرق / الأصل العرقي
الأمريكيون الأفارقة كبار السن أكثر من الأشخاص البيض تعرضا للإصابة بالخرف بمعدل مضاعف. والهسبانيين 1.5 مرة أكثر عرضة للإصابة بالخرف من البيض.
صحة القلب السيئة
ارتفاع ضغط الدم والكولسترول العالي والتدخين يزيد من خطر الإصابة بالخرف إذا لم يتم علاجها بشكل صحيح.
إصابات الدماغ الناجمة عن الإصابة الحادة
يمكن أن تزيد إصابات الرأس من خطر الإصابة بالخرف، خاصة إذا كانت شديدة أو تتكرر.\n''',
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
                    text: isEng? 'Research suggests other risk factors may also be important. These include:\n':'تشير الأبحاث إلى أن عوامل خطر أخرى قد تكون مهمة أيضًا. وتشمل هذه العوامل:\n',
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
                    text:isEng?
                    '''
hearing loss
untreated depression
loneliness or social isolation
sitting for most of the day
The research concluded that by modifying the risk factors we are able to change, our risk of dementia could be reduced by around a third.
So, you need to notice.
  \n''':''''فقدان السمع
الاكتئاب غير المعالج
الشعور بالوحدة أو العزلة الاجتماعية
الجلوس لمعظم اليوم
خلصت الأبحاث إلى أنه من خلال تعديل العوامل الخطرة التي يمكننا تغييرها، يمكن تقليل خطر الإصابة بالخرف بنسبة تصل إلى ثلث.
لذا، عليك أن تنتبه.\n''',
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
                    text: isEng? 'The risk:\n':'الخطر:\n',
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
                    text:isEng?
                    '''
 a diet that's high in saturated fat, salt and sugar, and low in fiber, can increase your risk of high blood pressure, high cholesterol, becoming overweight or obese, and type 2 diabetes.
  ''':'''يمكن أن تزيد النظام الغذائي الذي يحتوي على نسبة عالية من الدهون المشبعة والملح والسكر ومنخفض في الألياف من خطر الإصابة بارتفاع ضغط الدم والكولسترول العالي والسمنة، والإصابة بمرض السكري من النوع الثاني.\n''',
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
                    text: isEng? 'Depression and dementia:':'الاكتئاب والخرف:\n',
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
                    text:isEng?
                    '''
the relationship between dementia and depression is complex. It appears that having untreated depression increases your risk of developing dementia. However, depression can happen as part of the overall symptoms of dementia itself.
\n ''' : '''العلاقة بين الخرف والاكتئاب معقدة. يبدو أن وجود الاكتئاب غير المعالج يزيد من خطر الإصابة بالخرف. ومع ذلك، يمكن أن يحدث الاكتئاب كجزء من الأعراض العامة للخرف نفسه.\n''',
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
                    text:isEng? 'Margarine\n':'المرجرين\n',
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
                    text:isEng?
                    '''
A University of Minnesota study found a possible link between diacetyl (an ingredient in margarine) and Alzheimer’s disease (AD), the most common form of dementia. Specifically, researchers cite evidence showing diacetyl may contribute to the formation of the same type of protein clusters associated with AD. Healthier alternatives to margarine include:

Pureed avocado or all-natural nut butter (for toast)
Olive oil or coconut oil (for cooking)
Greek yogurt or pumpkin puree (for baking)
Many seniors with dementia find it challenging to plan and prepare healthy meals. In Arlington, in-home care providers can benefit aging adults in a variety of ways. From cooking nutritious meals to offering timely medication reminders, the dedicated caregivers at Home Care Assistance are available to help your elderly loved one 24 hours a day, 7 days a week.
  \n''':'''أظهرت دراسة لجامعة مينيسوتا وجود رابط محتمل بين الدياسيتيل (مكون في المرجرين) ومرض الزهايمر، وهو النوع الأكثر شيوعًا من أنواع الخرف. وبالتحديد، يشير الباحثون إلى وجود دلائل تشير إلى أن الدياسيتيل قد يساهم في تكوين نفس نوع من تجمعات البروتين المرتبطة بمرض الزهايمر. وتشمل بدائل أكثر صحة للمرجرين:

الأفوكادو المهروس أو زبدة المكسرات الطبيعية (للخبز)
زيت الزيتون أو زيت جوز الهند (للطهي)
الزبادي اليوناني أو صفار اليقطين (للخبز)
يجد الكثيرون من كبار السن المصابين بالخرف صعوبة في التخطيط وإعداد وجبات الطعام الصحية. في آرلنغتون، يمكن لمقدمي الرعاية في المنزل أن يساعدوا الكبار في العمر بعدة طرق. من الطهي لتذكيرهم بأخذ الأدوية في الوقت المحدد، يتوفر مقدمو الرعاية المخلصون في Home Care Assistance على مدار 24 ساعة في اليوم و7 أيام في الأسبوع لمساعدة أحبائك من كبار السن.\n''',
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
                    text:isEng? 'Fried Foods\n':'الأطعمة المقلية\n',
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
                    text:isEng?
                    '''
In general, people of all ages should avoid fried foods. Advanced glycation end products (AGEs) are chemicals released in fried foods that tend to make cells age faster, including ones in the brain. If your loved one already has dementia, a steady diet of fried foods may speed up brain cell damage. Steaming is a healthier cooking method.
\n''':'''بشكل عام، يجب على الأشخاص من جميع الأعمار تجنب الأطعمة المقلية. فإن المنتجات النهائية للجلايكوزيليشن المتقدم (AGEs) هي مواد كيميائية تفرج عنها في الأطعمة المقلية والتي تميل إلى تسريع عملية شيخوخة الخلايا، بما في ذلك الخلايا في الدماغ. إذا كان الشخص الذي تحبه لديه بالفعل مرض الخرف، فإن نظام غذائي مستمر من الأطعمة المقلية قد يسرع من تلف الخلايا الدماغية. الطهي بالبخار هو طريقة طهي أكثر صحة.
\n''',
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
                    text: isEng? 'Soda & Other Sugary Beverages\n':'الصودا والمشروبات الأخرى الغنية بالسكر\n',
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
                    text:isEng?
                    '''
Soda and sugary drinks have been linked to diabetes, which, according to the Mayo Clinic, is considered a risk factor for vascular dementia. A study involving lab animals found changes occurred in their brains after nearly a month of being fed sugary water. These changes were observed in parts of the brain that control memory-related abilities, suggesting cognitive functions could be affected by consuming drinks containing sugar. Instead of soda and sugary beverages, encourage your loved one living with dementia to enjoy healthy beverages, such as:
Herbal teas
Homemade smoothies
Sparkling water or coconut water
Green tea
\n''':'''تم ربط شرب الصودا والمشروبات الغنية بالسكر بمرض السكري الذي يعتبر، وفقًا لمايو كلينيك، عامل خطر لمرض الخرف الوعائي. أظهرت دراسة على حيوانات مختبرية تغيرات في أدمغتها بعد تقريبًا شهر من تغذيتها بماء سكري. لوحظت هذه التغييرات في أجزاء من الدماغ التي تتحكم في القدرات المتعلقة بالذاكرة، مما يشير إلى أن الوظائف الإدراكية قد تتأثر بتناول المشروبات التي تحتوي على السكر. بدلاً من الصودا والمشروبات الغنية بالسكر، يمكن تشجيع الشخص الذي تحبه ويعاني من الخرف على الاستمتاع بالمشروبات الصحية، مثل:

الشاي العشبي
السموذي المصنوع في المنزل
المياه الغازية أو ماء جوز الهند
الشاي الأخضر\n''',
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
                    text: isEng? 'Processed Meats \n':'اللحوم المصنّعة\n',
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
                    text:isEng?
                    '''
Compounds called nitrosamines are often found in processed meats, such as ham, hot dogs, sausage, and salami. Nitrosamines cause the liver to produce fats that are considered toxic when they travel to the brain. These fats also have the potential to damage brain cells and make dementia-related symptoms worse. These same compounds can also be found in processed cheeses, certain types of beer, and refined grains.
\n''':'''تتواجد مركبات تُدعى النتروزامينات في اللحوم المصنعة، مثل اللحم المدخن والنقانق والسجق والسلامي. تؤدي النتروزامينات إلى إنتاج الكبد للدهون التي تعتبر سامة عندما تصل إلى الدماغ. هذه الدهون لديها أيضًا القدرة على تلف خلايا الدماغ وتفاقم الأعراض المرتبطة بالخرف. يمكن العثور على هذه المركبات نفسها أيضًا في الجبن المصنّع، وبعض أنواع البيرة، وحبوب الحبوب المكررة.\n''',
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
                    text:isEng? 'Foods Containing MSG\n':'الأطعمة التي تحتوي على المونو صوديوم الغلوتامات \n',
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
                    text:isEng?
                    '''
Many people associate a flavor enhancer known as MSG (monosodium glutamate) with Chinese food. However, it’s also found in frozen dinners, certain snack foods, some brands of salad dressing, and other foods. For seniors with dementia, the issue with this food additive is that it can make dementia-related symptoms more noticeable or intense. Additionally, MSG has been associated with an increase in nervous system sensitivity and elevated levels of the beta amyloid protein related to Alzheimer’s disease and other forms of dementia.
\n''':''' يربط العديد من الأشخاص منقي النكهة المعروف باسم المونو صوديوم الغلوتامات (MSG) بالطعام الصيني. ومع ذلك، يتم العثور عليه أيضًا في العشاء المجمد، وبعض الوجبات الخفيفة، وبعض علامات التتبيل، وغيرها من الأطعمة. بالنسبة لكبار السن المصابين بالخرف، فإن المشكلة مع هذه الإضافة الغذائية هي أنها يمكن أن تجعل الأعراض المرتبطة بالخرف أكثر وضوحًا أو حادة. بالإضافة إلى ذلك، تم ربط المونو صوديوم الغلوتامات بزيادة حساسية الجهاز العصبي وارتفاع مستويات بروتين بيتا أميلويد المرتبط بمرض الزهايمر وغيره من أشكال الخرف.
 \n''',
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
