import 'package:flutter/material.dart';
import 'package:user_profile_ui/screens/profile.dart';

void main() {
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => const MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Mask Views ',
    home: ProfilePage(),
  );
}


