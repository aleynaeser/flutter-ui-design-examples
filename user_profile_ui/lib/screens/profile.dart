import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:user_profile_ui/widgets/about.dart';
import 'package:user_profile_ui/widgets/followers.dart';
import 'package:user_profile_ui/widgets/topProfile.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(padding: EdgeInsets.zero, children: <Widget>[
        const buildTop(),
        buildContent(),
      ]),
    );
  }
}
