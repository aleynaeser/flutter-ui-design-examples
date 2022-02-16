import 'package:flutter/material.dart';
import 'package:flutter_settings_screens/flutter_settings_screens.dart';


Widget buildLanguage() {
  const keyLanguage = 'key-language';
  return DropDownSettingsTile(
    settingKey: keyLanguage,
    title: 'Language',
    subtitle: '',
    selected: 1,
    values: const <int, String>{1: 'Turkish', 2: 'English', 3: 'Chinese'},
    onChange: (language) {},
  );
}
