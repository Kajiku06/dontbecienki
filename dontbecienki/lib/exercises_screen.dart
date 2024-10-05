import 'package:flutter/material.dart';
import 'theme.dart';
import 'widgets/search_panel.dart'; // Import komponentu

class ExercisesScreen extends StatelessWidget {
  final TextEditingController _searchController = TextEditingController();

  void _handleSearch(String query) {
    // Logika obsługi wyszukiwania
    print('Searching for: $query');
  }

  @override
  Widget build(BuildContext context) {
    final isNightMode = Theme.of(context).scaffoldBackgroundColor ==
        AppColors.nightBackgroundColor;

    return Scaffold(
      appBar: AppBar(
        title: Text('Ćwiczenia', style: AppStyles.titleTextStyle(isNightMode)),
      ),
      body: Column(
        children: [
          SearchPanel(
            onSearch: _handleSearch, // Przekazanie funkcji obsługi wyszukiwania
            controller: _searchController, // Przekazanie kontrolera tekstu
          ),
          Expanded(
            child: Center(
              child: Text('Lista ćwiczeń',
                  style: AppStyles.bodyTextStyle(isNightMode)),
            ),
          ),
        ],
      ),
    );
  }
}
