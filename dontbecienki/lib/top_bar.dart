import 'package:flutter/material.dart';
import 'theme.dart';

class TopBar extends StatelessWidget {
  final bool isNightMode;
  final Function toggleTheme;

  TopBar({required this.isNightMode, required this.toggleTheme});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.dayPrimaryColor, // Kolor tła
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: Icon(Icons.menu, color: Colors.black), // Ikona menu
                onPressed: () {
                  // Możesz dodać funkcjonalność, jeśli zajdzie potrzeba
                },
              ),
              IconButton(
                icon: Icon(
                  isNightMode ? Icons.wb_sunny : Icons.nightlight_round,
                  color: Colors.black, // Domyślny kolor ikon
                ),
                onPressed: () => toggleTheme(), // Przełączanie motywu
              ),
            ],
          ),
        ),
      ),
    );
  }
}
