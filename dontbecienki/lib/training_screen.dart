import 'package:flutter/material.dart';
import 'theme.dart';

class TrainingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final isNightMode = Theme.of(context).scaffoldBackgroundColor ==
        AppColors.nightBackgroundColor;

    return Scaffold(
      appBar: AppBar(
        title: Text('Treningi', style: AppStyles.titleTextStyle(isNightMode)),
      ),
      body: Center(
        child: Text('Dostępne treningi',
            style: AppStyles.bodyTextStyle(isNightMode)),
      ),
    );
  }
}
