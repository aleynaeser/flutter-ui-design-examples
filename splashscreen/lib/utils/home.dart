import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:splashscreen/utils/constants.dart';

import '../main.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primary,
        title: const Text("TimeToTravel"),
        actions: [
          IconButton(
              onPressed: () async {
                final prefs = await SharedPreferences.getInstance();
                final showHome = prefs.setBool('showHome', false);
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => MyStatefulWidget()));
              },
              icon: const Icon(Icons.logout))
        ],
      ),
      body: const Center(child: Text("Home")),
    );
  }
}
