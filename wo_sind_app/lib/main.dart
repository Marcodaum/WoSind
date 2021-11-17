import 'package:flutter/material.dart';

void main() => runApp(WoSindApp());

class WoSindApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Finde passende Projekte',
          style: TextStyle(color: Colors.green),
          textAlign: TextAlign.center,
        ),
        backgroundColor: Colors.white,
        shadowColor: Colors.white,
      ),
      bottomNavigationBar: BottomNavigationBar(
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
            icon: Icon(Icons.settings),
            label: 'Einstellungen',
          ),
        ],
      ),
    ));
  }
}
