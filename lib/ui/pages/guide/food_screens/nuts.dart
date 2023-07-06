import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_app/ui/theme.dart';

class Nuts extends StatelessWidget {
  final bool isEng;
  const Nuts({Key? key, required this.isEng}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Get.isDarkMode ? darkGreyClr : Colors.white,
        title: Text(
          isEng?
          'Nuts and Seeds\n':'المكسرات والبذور\n',
          style: TextStyle(
            color: Get.isDarkMode ? Colors.white : darkGreyClr,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Get.isDarkMode ? Colors.white : darkGreyClr,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: RichText(
            text: TextSpan(
              text: isEng? '1.Nuts,Seeds and Legumes: \n': '1.المكسرات والبذور والبقوليات: \n',
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
                      'Nuts, seeds and legumes contain antioxidants and omega-3 fatty acids, as well as other nutrients such as vitamin E, B vitamins, choline, magnesium and zinc. All of these are shown to promote brain health and reduce age-related cognitive decline. Foods such as walnuts, almonds, peanuts, soybeans, lentils, flax seeds and pumpkin seeds are all good choices to add to your diet if you’re looking to score these benefits.\n ':
                      'المكسرات والبذور والبقوليات تحتوي على مضادات الأكسدة والأحماض الدهنية أوميغا-3، بالإضافة إلى غيرها من العناصر الغذائية مثل فيتامين إي، فيتامينات ب، الكولين، المغنيسيوم والزنك. وقد أظهرت الدراسات أن كل هذه العناصر تعزز صحة الدماغ وتقلل من التدهور الإدراكي المرتبط بالعمر. ومن بين الأطعمة المفيدة في هذا الصدد: الجوز، واللوز، والفول السوداني، وفول الصويا، والعدس، وبذور الكتان وبذور اليقطين. لذا إذا كنت تبحث عن هذه الفوائد، فإن إضافة هذه الأطعمة إلى نظامك الغذائي سيكون خياراً جيداً.\n ',

                  style: TextStyle(
                      color: Get.isDarkMode ? Colors.white : darkGreyClr,
                      fontSize: 18,
                      fontWeight: FontWeight.normal),
                ),
                TextSpan(
                  text: isEng?
                      'Pecans, almonds, walnuts, cashews, and peanuts are loaded with healthy fats, magnesium, vitamin E, and B vitamins — all of which are shown to promote good cognition and ward off signs of dementia. Women over the age of 70 who consume at least 5 servings of nuts per week are shown to have significantly better brain health than women in the same age group who don’t eat nuts. Another study shows that the anti-inflammatory phytochemicals in English walnuts can reduce inflammation of brain cells to maintain optimal brain health throughout the aging process.':
                      'البقان، واللوز، والجوز، والكاجو، والفول السوداني محملة بالدهون الصحية، والمغنيسيوم، وفيتامين إي، وفيتامينات ب - والتي تمتلك جميعها خصائص تعزز الإدراك الجيد وتحمي من علامات الخرف. وأظهرت الدراسات أن النساء اللواتي تتجاوز أعمارهن 70 عامًا ويتناولن خمسة حصص من المكسرات في الأسبوع على الأقل، يظهر لديهن صحة دماغية أفضل بشكل كبير من النساء في نفس الفئة العمرية اللاتي لا يتناولن المكسرات. وأظهرت دراسة أخرى أن المركبات النباتية المضادة للالتهابات في الجوز الإنجليزي يمكن أن تقلل من الالتهابات في خلايا الدماغ للحفاظ على صحة الدماغ الأمثل طوال عملية الشيخوخة.',
                  style: TextStyle(
                      color: Get.isDarkMode ? Colors.white : darkGreyClr,
                      fontSize: 18,
                      fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
