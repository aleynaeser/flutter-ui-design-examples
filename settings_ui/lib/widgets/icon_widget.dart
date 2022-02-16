import 'package:flutter/material.dart';
import 'package:settings_ui/utils/constants.dart';

class IconWidget extends StatelessWidget {
  final IconData icon;
  final Color color;

  const IconWidget({Key? key, required this.icon, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(iconPadding),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
      ),
      child: Icon(icon, color: Colors.white),
    );
  }
}
