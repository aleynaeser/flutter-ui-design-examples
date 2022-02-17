import 'package:flutter/cupertino.dart';
import 'package:user_profile_ui2/model/user.dart';
import 'package:user_profile_ui2/utils/constants.dart';

Widget buildName(User user) => Column(
  children: [
    Text(
      user.name,
      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: titleSize),
    ),
    const SizedBox(height:4),
    Text(
      user.job,
      style: const TextStyle(color: subtitleColor ),
    )
  ],
);