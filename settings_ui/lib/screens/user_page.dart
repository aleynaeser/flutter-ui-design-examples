import 'package:flutter/material.dart';
import 'package:flutter_settings_screens/flutter_settings_screens.dart';
import 'package:settings_ui/utils/constants.dart';
import 'package:settings_ui/widgets/user_info.dart';

class UserPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SimpleSettingsTile(
      title: 'Aleyna ESER',
      subtitle: '+900000000000',
      leading: const CircleAvatar(
        backgroundImage: NetworkImage(profile),
      ),
      child: SettingsScreen(
        title: 'Status',
        children: <Widget>[
          const SizedBox(
            height: 16,
          ),
          buildStatus(),
          const SizedBox(
            height: 16,
          ),
          buildAbout(),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
