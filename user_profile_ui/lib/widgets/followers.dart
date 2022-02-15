import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:user_profile_ui/utils/constants.dart';

class NumbersWidget extends StatelessWidget {
  const NumbersWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        buildButton(text: 'Projects', value: projectValue),
        buildDivider(),
        buildButton(text: 'Followers', value: followers),
        buildDivider(),
        buildButton(text: 'Following', value: following),
      ],
    );
  }

  Widget buildDivider() => Container(
        height: dividerHeight,
        child: VerticalDivider(),
      );
  Widget buildButton({
    required String text,
    required int value,
  }) =>
      MaterialButton(
        padding: const EdgeInsets.symmetric(vertical: vertical),
        onPressed: () {},
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              '$value',
              style: const TextStyle( color: textColor,
                  fontWeight: FontWeight.bold, fontSize: valueSize),
            ),
            const SizedBox(
              height: 2,
            ),
            Text(
              text,
              style: TextStyle(color: subTextColor,fontSize: valueInfoSize),
            )
          ],
        ),
      );
}
