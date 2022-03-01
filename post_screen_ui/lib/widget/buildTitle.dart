import 'package:flutter/material.dart';
import 'package:post_screen_ui/utils/constant.dart';

class buildTitle extends StatelessWidget {
  const buildTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left:20),
      child: Text('Articles', style: TextStyle(fontSize: titleSize, )),
    );
  }
}
