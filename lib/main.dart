import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:todo_app/db/db_helper.dart';
import 'package:todo_app/services/notfification_services.dart';
import 'package:todo_app/ui/pages/guide/guide.dart';
import 'package:todo_app/ui/pages/hoem_screen.dart';
import 'package:todo_app/ui/theme.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'services/theme_services.dart';

bool isEng = true;

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _currentIndex = 0;
  List<Widget> body = [
    const HomeScreen(),
    Guide(isEng: isEng),
    const Icon(Icons.home),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: body[_currentIndex]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int newIndex) {
          setState(() {
            _currentIndex = newIndex;
          });
        },
        items: const [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'Guide',
            icon: Icon(Icons.book),
          ),
        ],
      ),
    );
  }
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  NotifyHelper().initializeNotification();
  await DBHelper.initDb();
  await GetStorage.init();
  tz.initializeTimeZones();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: Themes.light,
      darkTheme: Themes.dark,
      themeMode: ThemeServices().theme,
      title: 'Pavo',
      debugShowCheckedModeBanner: false,
      home: const NavBar(),
    );
  }
}