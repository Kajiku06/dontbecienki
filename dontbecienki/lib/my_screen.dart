import 'package:flutter/material.dart';
import 'theme.dart';

class MyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final isNightMode = Theme.of(context).scaffoldBackgroundColor ==
        AppColors.nightBackgroundColor;

    return Scaffold(
      appBar: AppBar(
        title: Text('Mój Profil', style: AppStyles.titleTextStyle(isNightMode)),
      ),
      body: Center(
        child: Text('Dane użytkownika',
            style: AppStyles.bodyTextStyle(isNightMode)),
      ),
    );
  }
}
