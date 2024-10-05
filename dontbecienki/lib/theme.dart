import 'package:flutter/material.dart';

// Klasa z kolorami aplikacji
class AppColors {
  // Kolory trybu dziennego
  static const Color dayPrimaryColor =
      Color(0xFF009DFF); // Główny kolor niebieski
  static const Color dayBackgroundColor = Color(0xFFF8F8F8); // Prawie biały
  static const Color dayTextColor = Colors.black; // Tekst czarny
  static const Color dayBottomNavColor =
      dayPrimaryColor; // Kolor tła dolnej nawigacji w trybie dziennym

  // Kolory trybu nocnego
  static const Color nightPrimaryColor =
      Color.fromARGB(255, 0, 157, 255); // Prawie czarny
  static const Color nightBackgroundColor = Color(0xFF000000); // Czarne tło
  static const Color nightTextColor = Colors.white70; // Prawie biały tekst
  static const Color nightBottomNavColor =
      nightPrimaryColor; // Kolor tła dolnej nawigacji w trybie nocnym
}

// Klasa do stylu aplikacji
class AppStyles {
  // Styl dla tytułów
  static TextStyle titleTextStyle(bool isNightMode) {
    return TextStyle(
      color: isNightMode ? AppColors.nightTextColor : AppColors.dayTextColor,
      fontSize: 24,
      fontWeight: FontWeight.bold,
    );
  }

  // Styl dla zwykłego tekstu
  static TextStyle bodyTextStyle(bool isNightMode) {
    return TextStyle(
      color: isNightMode ? AppColors.nightTextColor : AppColors.dayTextColor,
      fontSize: 16,
    );
  }

  // Styl dla przycisków
  static TextStyle buttonTextStyle(bool isNightMode) {
    return TextStyle(
      color: isNightMode
          ? AppColors.nightBackgroundColor
          : AppColors.dayBackgroundColor,
      fontSize: 18,
      fontWeight: FontWeight.bold,
    );
  }

  // Styl dla nagłówków
  static TextStyle headerTextStyle(bool isNightMode) {
    return TextStyle(
      color: isNightMode ? AppColors.nightTextColor : AppColors.dayTextColor,
      fontSize: 20,
      fontWeight: FontWeight.w600,
    );
  }
}
