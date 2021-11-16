import 'package:flutter/material.dart';

void main() => runApp(WoSindApp());

class WoSindApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text('WoSind'),
      ),
      bottomNavigationBar: BottomNavigationBar(
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
            icon: Icon(Icons.access_alarms),
            label: 'Einstellungen',
          ),
        ],
      ),
    ));
  }
}
