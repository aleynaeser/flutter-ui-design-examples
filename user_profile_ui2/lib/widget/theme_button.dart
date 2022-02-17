import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:user_profile_ui2/provider/theme_provider.dart';
import 'package:user_profile_ui2/utils/constants.dart';

class ChangeThemeButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Switch.adaptive(
      activeColor: primary,
      value: themeProvider.isDarkMode,
      onChanged: (value) {
        final provider = Provider.of<ThemeProvider>(context, listen: false);
        provider.toggleTheme(value);
      },
    );
  }
}