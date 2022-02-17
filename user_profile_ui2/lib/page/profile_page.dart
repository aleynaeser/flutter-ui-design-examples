import 'package:flutter/material.dart';
import 'package:user_profile_ui2/model/user_preferences.dart';
import 'package:user_profile_ui2/widget/about.dart';
import 'package:user_profile_ui2/widget/appBar.dart';
import 'package:user_profile_ui2/widget/button_widget.dart';
import 'package:user_profile_ui2/widget/name.dart';
import 'package:user_profile_ui2/widget/numbers_widget.dart';
import 'package:user_profile_ui2/widget/profile_widget.dart';

import 'article_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final user = UserPreferences.myUser;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          const SizedBox(height: 16),
          ProfileWidget(imagePath: user.imagePath, onClicked: () async {}),
          const SizedBox(height: 24),
          buildName(user),
          const SizedBox(height: 24),
          Center(child: buildAskButton()),
          const SizedBox(height: 24),
          NumbersWidget(),
          const SizedBox(height: 24),
          buildAbout(user),
          const SizedBox(height: 24),
          ArticlePage(),
          const SizedBox(height: 24),
        ],
      ),
    );
  }

  Widget buildAskButton() {
    return ButtonWidget(text: 'Ask', onClicked: () {});
  }
}
