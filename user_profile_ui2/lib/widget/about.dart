import 'package:flutter/material.dart';
import 'package:user_profile_ui2/model/user.dart';
import 'package:user_profile_ui2/utils/constants.dart';

Widget buildAbout(User user) => Container(
      padding: const EdgeInsets.symmetric(horizontal: horizontalPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'About',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: titleSize),
          ),
          const SizedBox(height: 16),
          Text(
            user.about,
            style: const TextStyle(height: 1.4, fontSize: bodyFontSize),
          )
        ],
      ),
    );
