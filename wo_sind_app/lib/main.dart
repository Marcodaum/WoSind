import 'package:flutter/material.dart';

void main() => runApp(WoSindApp());

class WoSindApp extends StatelessWidget {
  var colorBackground = Colors.teal[100];

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
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 1,
          childAspectRatio: 3,
          children: <Widget>[
            Container(
              decoration: new BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                color: Colors.green[100],
              ),
              padding: const EdgeInsets.only(top: 16, left: 150),
              child: const Align(
                  alignment: Alignment.topLeft,
                  child: Text("Hammer",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20))),
            ),
            Container(
              padding: const EdgeInsets.only(top: 16, left: 150),
              child: const Align(
                  alignment: Alignment.topLeft,
                  child: Text("Schraubenzieher",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20))),
              color: Colors.green[100],
            ),
            Container(
              padding: const EdgeInsets.only(top: 16, left: 150),
              child: const Align(
                  alignment: Alignment.topLeft,
                  child: Text("Mülleimer",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20))),
              color: Colors.green[100],
            ),
            Container(
              padding: const EdgeInsets.only(top: 16, left: 150),
              child: const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Rüttelplatte",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  )),
              color: Colors.green[100],
            ),
            Container(
              padding: const EdgeInsets.only(top: 16, left: 150),
              child: const Align(
                  alignment: Alignment.topLeft,
                  child: Text("Schneider",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20))),
              color: Colors.green[100],
            ),
            Container(
              padding: const EdgeInsets.only(
                top: 16,
                left: 150,
              ),
              child: const Align(
                  alignment: Alignment.topLeft,
                  child: Text("Waage",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20))),
              color: Colors.green[100],
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
