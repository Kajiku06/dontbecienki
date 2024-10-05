import 'package:flutter/material.dart';
import '/theme.dart'; // Upewnij się, że ścieżka do theme.dart jest poprawna

class SearchPanel extends StatelessWidget {
  final Function(String) onSearch; // Callback do obsługi wyszukiwania
  final TextEditingController controller;

  const SearchPanel({
    Key? key,
    required this.onSearch,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isNightMode = Theme.of(context).scaffoldBackgroundColor ==
        AppColors.nightBackgroundColor;

    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: isNightMode
            ? AppColors.nightBackgroundColor
            : AppColors.dayBackgroundColor,
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: [
          BoxShadow(
            color: isNightMode ? Colors.black26 : Colors.grey.withOpacity(0.3),
            blurRadius: 8.0,
            offset: Offset(0, 2), // zmiana przesunięcia cienia
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: controller,
              style:
                  AppStyles.bodyTextStyle(isNightMode), // Użycie stylu z theme
              decoration: InputDecoration(
                hintText: 'Wyszukaj...',
                hintStyle: TextStyle(
                    color: isNightMode ? Colors.white54 : Colors.black54),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide(
                      color: isNightMode ? Colors.white70 : Colors.black54),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide(color: AppColors.dayPrimaryColor),
                ),
              ),
            ),
          ),
          IconButton(
            icon: Icon(Icons.search,
                color: isNightMode ? Colors.white : Colors.black),
            onPressed: () {
              onSearch(controller.text); // Wywołanie funkcji przycisku
            },
          ),
        ],
      ),
    );
  }
}
