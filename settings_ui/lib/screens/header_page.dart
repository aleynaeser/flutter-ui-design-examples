import 'package:flutter/material.dart';
import 'package:settings_ui/screens/user_page.dart';

class HeaderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        UserPage(),
      ],
    );
  }
}
