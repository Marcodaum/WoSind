import 'package:flutter/material.dart';

void main() => runApp(WoSindApp());

class WoSindApp extends StatelessWidget {
  var colorBackground = Colors.lightGreen;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Finde das passende Werkzeug',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: colorBackground,
        shadowColor: colorBackground,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: colorBackground,
        currentIndex: 1,
        selectedItemColor: Colors.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.integration_instructions_outlined),
            label: 'Anleitungen',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: 'Marktplatz',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_outlined),
            label: 'Einstellungen',
          ),
        ],
      ),
    ));
  }
}
