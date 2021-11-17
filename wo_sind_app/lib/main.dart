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
          'WoSind',
          style: TextStyle(color: Colors.green),
        ),
        backgroundColor: Colors.white,
        shadowColor: Colors.white,
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.green,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.accessible_forward_rounded),
            label: 'Anleitungen',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_shopping_cart_rounded),
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
