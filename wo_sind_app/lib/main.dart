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
      body: Center(
        child: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(10),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 1,
          childAspectRatio: 3,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text("Hammer"),
              color: Colors.green[100],
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text('Schraubenzieher'),
              color: Colors.green[200],
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text('Mülleimer'),
              color: Colors.green[300],
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text('Rüttelplatte'),
              color: Colors.green[500],
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text('Schneider'),
              color: Colors.green[500],
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text('Waage'),
              color: Colors.green[600],
            ),
          ],
        ),
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
