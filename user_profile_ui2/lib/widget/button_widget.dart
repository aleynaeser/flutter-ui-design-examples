import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:user_profile_ui2/utils/constants.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback onClicked;

  const ButtonWidget({Key? key, required this.text, required this.onClicked})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shadowColor: primary,
        shape: const StadiumBorder(),
        primary: primary,
        onPrimary: white,
        padding: const EdgeInsets.symmetric(
            horizontal: horizontalPadding, vertical: verticalPadding),
      ),
      child: Text(text,),
      onPressed: onClicked,
    );
  }
}
