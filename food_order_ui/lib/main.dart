import 'package:expandable_bottom_bar/expandable_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:food_order_ui/screens/home.dart';
import 'package:food_order_ui/utils/constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cities',
      themeMode: ThemeMode.dark,
      theme: ThemeData(
        primaryColor: mainColor,
        textTheme: Theme.of(context).textTheme.apply(
              bodyColor: textColor,
            ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
      ),
      home: DefaultBottomBarController(
        child: HomePage(),
      ),
    );
  }
}
