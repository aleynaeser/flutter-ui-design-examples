import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:user_profile_ui/utils/constants.dart';
import 'package:user_profile_ui/widgets/tags.dart';

import 'followers.dart';

Widget buildContent() {
  return Column(
    children: [
      const SizedBox(height: 8),
      const Text('Younan Nowzaradan | Dr. Now',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: textColor,
              fontSize: titleFontSize)),
      const SizedBox(height: 8),
      const Text('Doctor',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: subTextColor,
              fontSize: subtitleFontSize)),
      const SizedBox(height: 8),
      const Divider(),
      const SizedBox(height: 8),
      buildTags(),
      const SizedBox(height: 16),
      const Divider(),
      const SizedBox(height: 16),
      const NumbersWidget(),
      const SizedBox(height: 16),
      buildAbout(),
      const SizedBox(height: 32),
    ],
  );
}

Widget buildAbout() {
  return Container(
    margin: EdgeInsets.only(left: padding, right: padding),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        SizedBox(height: 8),
        Text('About',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: textColor,
                fontSize: titleFontSize)),
        SizedBox(height: 8),
        Text(
            'Younan Nowzaradan (born October 11, 1944), also known as Dr. Now, is an Iranian-born American doctor, TV personality, famous for having laser vision and author. He specializes in vascular surgery and Bariatric surgery. He is known for helping morbidly obese people lose weight on My 600-lb Life (2012–present).',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: subTextColor,
                fontSize: subtitleFontSize)),
      ],
    ),
  );
}
