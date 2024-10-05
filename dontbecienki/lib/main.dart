import 'package:flutter/material.dart';
import 'bottom_navigation.dart';
import 'theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isNightMode = false;

  void _toggleTheme() {
    setState(() {
      _isNightMode = !_isNightMode; // Przełącz tryb
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Moja Aplikacja',
      theme: ThemeData(
        primaryColor: AppColors.dayPrimaryColor,
        scaffoldBackgroundColor: _isNightMode
            ? AppColors.nightBackgroundColor
            : AppColors.dayBackgroundColor,
        textTheme: TextTheme(
          bodyLarge: AppStyles.bodyTextStyle(_isNightMode),
          bodyMedium: AppStyles.bodyTextStyle(_isNightMode),
          displayLarge: AppStyles.titleTextStyle(_isNightMode),
        ),
      ),
      home: BottomNavigation(
        isNightMode: _isNightMode,
        toggleTheme: _toggleTheme,
      ),
    );
  }
}
