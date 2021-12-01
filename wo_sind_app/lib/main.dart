import 'package:flutter/material.dart';
import 'package:wo_sind_app/GUI/topAppBar.dart';
// main.dart

import 'package:flutter/material.dart';

import '../GUI/topAppBar.dart';
import '../GUI/bottomNavigationBar.dart';
import '../pageContent/marketplaceContent.dart';
import '../pageContent/productPage.dart';

void main() => runApp(MyApp());

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  _createPage({required String title}) => Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: //test());
          marketplaceContent(context));

  final int _pageAmount = 3;

  final _pageController = PageController(initialPage: 1);
  int _selectedPage = 1;

  bool product = false;

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: createAppBar(_selectedPage),
        body: PageView(
          controller: _pageController,
          onPageChanged: (value) => setState(() => _selectedPage = value),
          // Create pages
          children: List<Scaffold>.generate(
              _pageAmount, (index) => _createPage(title: 'Page ${index + 1}')),
          // Create pages

          /*
        child: FlatButton(
          color: Colors.teal,
          textColor: Colors.white,
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => Screen2()));
          },
          child: Text('GO TO SCREEN 2'),
        ),*/
        ),
        bottomNavigationBar:
            //createBottomNavigationBar(_selectedPage, _pageController)),
            BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                backgroundColor: Colors.green[200],
                currentIndex: _selectedPage,
                selectedItemColor: Colors.white,
                unselectedItemColor: Colors.blueGrey[600],
                showSelectedLabels: true,
                showUnselectedLabels: true,
                // Change page tap page number
                onTap: (value) => _pageController.animateToPage(value,
                    duration: const Duration(microseconds: 250000),
                    curve: Curves.decelerate),
                // Create page numbers
                items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.integration_instructions_outlined),
                label: 'Projekte',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart_outlined),
                label: 'Marktplatz',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profil',
              ),
            ]));
  }

  GridView marketplaceContent(BuildContext context) {
    return GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 1,
        childAspectRatio: 3,
        children: <Widget>[
          createElevatedButton(context),
          createElevatedButton(context),
          createElevatedButton(context),
          createElevatedButton(context),
          createElevatedButton(context),
        ]);
  }
}

class Screen2 extends StatefulWidget {
  @override
  ProductPage createState() => ProductPage();
}
