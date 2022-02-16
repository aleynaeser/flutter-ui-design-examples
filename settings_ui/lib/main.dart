import 'package:flutter/material.dart';
import 'package:flutter_settings_screens/flutter_settings_screens.dart';
import 'package:settings_ui/screens/settings_page.dart';
import 'package:settings_ui/utils/constants.dart';
import 'package:settings_ui/widgets/darkMode.dart';

Future main() async {
  await Settings.init(cacheProvider: SharePreferenceCache());
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    final isDarkMode = Settings.getValue<bool>(DarkMode.keyDarkMode, true);
    return ValueChangeObserver<bool>(
      cacheKey: DarkMode.keyDarkMode,
      defaultValue: true,
      builder: (_, isDarkMode, __) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Settings',
        theme: isDarkMode
            ? ThemeData.dark().copyWith(
                brightness: Brightness.dark,
                primaryColor: Colors.white,
                shadowColor: primary,
                splashColor: colorSchema,
                scaffoldBackgroundColor: primary,
                canvasColor: canvasColor,
                colorScheme:
                    ColorScheme.fromSwatch().copyWith(secondary: colorSchema),
              )
            : ThemeData.light().copyWith(
                brightness: Brightness.dark,
                shadowColor: primary,
                splashColor: colorSchema,
                scaffoldBackgroundColor: lightPrimary,
                canvasColor: canvasLightColor,
                colorScheme:
                    ColorScheme.fromSwatch().copyWith(secondary: colorSchema),
              ),
        home: SettingsPage(),
      ),
    );
  }
}
