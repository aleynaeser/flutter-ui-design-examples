import 'package:flutter/material.dart';
import 'package:flutter_settings_screens/flutter_settings_screens.dart';
import 'package:settings_ui/utils/constants.dart';

import 'icon_widget.dart';

Widget buildAccountInfo(BuildContext context) {
  return SimpleSettingsTile(
    title: 'Account Info',
    subtitle: '',
    leading: const IconWidget(
      icon: Icons.text_snippet,
      color: iconColor,
    ),
    onTap: () {},
  );
}
