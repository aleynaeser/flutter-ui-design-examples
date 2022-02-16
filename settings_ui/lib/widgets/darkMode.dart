import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_settings_screens/flutter_settings_screens.dart';
import 'package:settings_ui/utils/constants.dart';

import 'icon_widget.dart';

class DarkMode extends StatelessWidget {
  static const keyDarkMode = 'key-dark-mode';

  @override
  Widget build(BuildContext context) {
    return SwitchSettingsTile(
        title: 'Dark Mode',
        subtitle: '',
        settingKey: keyDarkMode,
        leading: const IconWidget(
          icon: Icons.palette,
          color: iconColor,
        ),
        enabledLabel: 'Enabled',
        disabledLabel: 'Disabled',
        onChange: (isDarkMode) {});
  }
}
