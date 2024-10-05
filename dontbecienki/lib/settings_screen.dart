import 'package:flutter/material.dart';
import 'theme.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final isNightMode = Theme.of(context).scaffoldBackgroundColor ==
        AppColors.nightBackgroundColor;

    return Scaffold(
      appBar: AppBar(
        title: Text('Ustawienia', style: AppStyles.titleTextStyle(isNightMode)),
      ),
      body: Center(
        child: Text('Ustawienia aplikacji',
            style: AppStyles.bodyTextStyle(isNightMode)),
      ),
    );
  }
}
