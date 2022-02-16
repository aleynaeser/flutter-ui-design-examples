import 'package:flutter/material.dart';
import 'package:flutter_settings_screens/flutter_settings_screens.dart';
import 'package:settings_ui/utils/constants.dart';

import 'icon_widget.dart';

Widget buildSendFeedback(BuildContext context) {
  return SimpleSettingsTile(
    title: 'Send Feedback',
    subtitle: '',
    leading: const IconWidget(
      icon: Icons.thumb_up,
      color: iconColor,
    ),
    onTap: () {},
  );
}
