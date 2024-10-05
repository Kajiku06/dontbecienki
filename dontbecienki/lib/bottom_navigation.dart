import 'package:flutter/material.dart';
import 'exercises_screen.dart';
import 'my_screen.dart';
import 'settings_screen.dart';
import 'training_screen.dart';
import 'theme.dart';
import 'top_bar.dart'; // Import komponentu TopBar

class BottomNavigation extends StatefulWidget {
  final bool isNightMode;
  final Function toggleTheme;

  BottomNavigation({required this.isNightMode, required this.toggleTheme});

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    MyScreen(),
    TrainingScreen(),
    ExercisesScreen(),
    SettingsScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index; // Zaktualizuj aktualny indeks
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Usunięcie tytułu
        elevation: 0,
        backgroundColor: Colors.transparent, // Przezroczyste tło dla AppBar
        toolbarHeight: 0, // Zmiana wysokości AppBar na 0
      ),
      body: Column(
        children: [
          TopBar(
            isNightMode: widget.isNightMode,
            toggleTheme: widget.toggleTheme,
          ),
          Expanded(
            child: _screens[_currentIndex], // Wyświetlenie odpowiedniego ekranu
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.person), // Ikona profilu
            label: 'Profil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.fitness_center), // Ikona treningu
            label: 'Trening',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list), // Ikona ćwiczeń
            label: 'Ćwiczenia',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings), // Ikona ustawień
            label: 'Ustawienia',
          ),
        ],
        currentIndex: _currentIndex, // Wybrany indeks
        selectedItemColor: Colors.white, // Kolor wybranej ikony
        unselectedItemColor: Colors.black, // Kolor nie wybranej ikony
        backgroundColor: AppColors.dayPrimaryColor, // Kolor tła dolnego paska
        type: BottomNavigationBarType.fixed, // Ustaw typ na fixed
        onTap: _onItemTapped, // Akcja przy kliknięciu
      ),
    );
  }
}
