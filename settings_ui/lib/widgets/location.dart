import 'package:flutter/material.dart';
import 'package:flutter_settings_screens/flutter_settings_screens.dart';

const keyLocation = 'key-location';

Widget buildLocation() {
  return TextInputSettingsTile(
    title: 'Location',
    settingKey: keyLocation,
    initialValue: 'Turkey',
    onChange: (location) {},
  );
}
