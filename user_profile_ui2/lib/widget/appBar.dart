import 'package:flutter/material.dart';
import 'package:user_profile_ui2/utils/constants.dart';
import 'package:user_profile_ui2/widget/theme_button.dart';

AppBar buildAppBar(BuildContext context) {

  return AppBar(
    title: const Text('Profile', style: TextStyle(color:primary ),),
    leading: const BackButton(color: primary),
    backgroundColor: Colors.transparent,
    elevation: 0,
    actions: [
      ChangeThemeButtonWidget(),
    ],
  );
}
