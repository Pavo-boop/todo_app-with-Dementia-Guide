// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ThemeServices  {
  final GetStorage? box = GetStorage();
  final key = 'isDarkMode';

    saveThemeToBox(bool? isDarkMode)=>box!.write(key, isDarkMode);

  bool? loadThemeFromBox()=>box!.read<bool?>(key) ?? false;


   ThemeMode get theme => loadThemeFromBox()! ? ThemeMode.dark : ThemeMode.light;
  void SwitchTheme(){
    Get.changeThemeMode(loadThemeFromBox()! ? ThemeMode.light : ThemeMode.dark);
    saveThemeToBox(!loadThemeFromBox()!);
  }
}