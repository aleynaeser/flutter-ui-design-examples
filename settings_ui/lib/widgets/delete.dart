import 'package:flutter/material.dart';
import 'package:flutter_settings_screens/flutter_settings_screens.dart';
import 'package:settings_ui/utils/constants.dart';

import 'icon_widget.dart';

Widget buildDeleteAccount() {
  return SimpleSettingsTile(
    title: 'Delete Account',
    subtitle: '',
    leading: const IconWidget(
      icon: Icons.delete,
      color: iconColor,
    ),
    onTap: () {},
  );
}
