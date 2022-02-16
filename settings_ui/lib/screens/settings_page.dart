import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_settings_screens/flutter_settings_screens.dart';
import 'package:settings_ui/screens/account_page.dart';
import 'package:settings_ui/screens/header_page.dart';
import 'package:settings_ui/utils/constants.dart';
import 'package:settings_ui/widgets/darkMode.dart';
import 'package:settings_ui/widgets/delete.dart';
import 'package:settings_ui/widgets/feedback.dart';
import 'package:settings_ui/widgets/logout.dart';
import 'package:settings_ui/widgets/reportbug.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: topAppBar,
        body: SafeArea(
          child: ListView(
            padding: const EdgeInsets.all(padding),
            children: [
              HeaderPage(),
              const SizedBox(
                height: 16,
              ),
              SettingsGroup(title: 'General Settings', children: <Widget>[
                const SizedBox(
                  height: 16,
                ),
                DarkMode(),
                const SizedBox(
                  height: 16,
                ),
                AccountPage(),
                const SizedBox(
                  height: 16,
                ),
                buildLogout(),
                const SizedBox(
                  height: 16,
                ),
                buildDeleteAccount(),
                const SizedBox(
                  height: 16,
                ),
                buildReportBug(context),
                const SizedBox(
                  height: 16,
                ),
                buildSendFeedback(context),
              ]),
            ],
          ),
        ));
  }
}

//Creating AppBar function
final topAppBar = AppBar(
  backgroundColor: Colors.transparent,
  elevation: 0,
  title: const Text(
    "Settings",
    style: TextStyle(
        letterSpacing: 2,
        color: colorSchema,
        fontSize: 30,
        fontWeight: FontWeight.bold),
  ),
  leading: const BackButton(color: colorSchema),
);
