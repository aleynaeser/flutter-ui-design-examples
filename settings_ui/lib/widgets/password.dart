import 'package:flutter/material.dart';
import 'package:flutter_settings_screens/flutter_settings_screens.dart';

const keyPasswo = 'key-passwo';

Widget buildPassword() {
  return TextInputSettingsTile(
      title: 'Password',
      settingKey: keyPasswo,
      initialValue: '******',
      onChange: (password) {},
      validator: (password) =>
      password != null && password.length >= 6
          ? null
          : 'Enter at least 6 characters!'
  );
}
