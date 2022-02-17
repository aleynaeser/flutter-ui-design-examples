import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:user_profile_ui2/page/profile_page.dart';
import 'package:user_profile_ui2/model/user_preferences.dart';
import 'package:user_profile_ui2/provider/theme_provider.dart';


Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await UserPreferences.init();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
    create: (context) => ThemeProvider(),
    builder: (context, _) {
      final themeProvider = Provider.of<ThemeProvider>(context);
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Profile UI',
        themeMode: themeProvider.themeMode,
        theme: MyThemes.lightTheme,
        darkTheme: MyThemes.darkTheme,
        home: ProfilePage(),
      );
    },
  );
}
