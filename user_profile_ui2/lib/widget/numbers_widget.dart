import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:user_profile_ui2/utils/constants.dart';

class NumbersWidget extends StatelessWidget {
  const NumbersWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          buildButton(context, '40b', 'Articles'),
          buildDivider(),
          buildButton(context, '500b', 'Followers'),
          buildDivider(),
          buildButton(context, '500', 'Following'),
        ],
      ),
    );
  }

  Widget buildDivider() => Container(height: 24, child: VerticalDivider());

 Widget buildButton(BuildContext context, String value, String text) {
    return MaterialButton(
      padding: const EdgeInsets.symmetric(vertical: 4),
      onPressed: () {},
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text(
            value,
            style: const TextStyle(
                fontSize: subtitleSize),
          ),
          const SizedBox(
            height: 2,
          ),
          Text(
            text,
            style: const TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
