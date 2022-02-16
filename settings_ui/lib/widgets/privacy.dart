import 'package:flutter/material.dart';
import 'package:flutter_settings_screens/flutter_settings_screens.dart';
import 'package:settings_ui/utils/constants.dart';
import 'icon_widget.dart';

Widget buildPrivacy(BuildContext context) {
  return SimpleSettingsTile(
    title: 'Privacy',
    subtitle: '',
    leading: const IconWidget(
      icon: Icons.lock,
      color: iconColor,
    ),
    onTap: () {},
  );
}
