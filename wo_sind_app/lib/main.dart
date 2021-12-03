import 'package:flutter/material.dart';
import 'package:wo_sind_app/GUI/mainColors.dart';
import 'package:wo_sind_app/GUI/topAppBar.dart';
// main.dart

import 'package:flutter/material.dart';

import '../GUI/topAppBar.dart';
import '../GUI/bottomNavigationBar.dart';
import '../pageContent/marketplaceContent.dart';
import '../pageContent/projectsContent.dart';
import '../pageContent/productPage.dart';
import '../pageContent/profileContent.dart';

void main() => runApp(MyApp());

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  _createPage() => Scaffold(
      body: _selectedPage == 0
          ? projectsContent(context)
          : _selectedPage == 1
              ? marketplaceContent(context)
              : profileContent());

  final int _pageAmount = 3;

  final _pageController = PageController(initialPage: 1);
  int _selectedPage = 1;

  bool product = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: createAppBar(_selectedPage),
        body: PageView(
          controller: _pageController,
          onPageChanged: (value) => setState(() => _selectedPage = value),
          // Create pages
          children:
              List<Scaffold>.generate(_pageAmount, (index) => _createPage()),
        ),
        bottomNavigationBar:
            //createBottomNavigationBar(_selectedPage, _pageController)),
            BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                backgroundColor: mainColors.background,
                currentIndex: _selectedPage,
                selectedItemColor: mainColors.selector_light_green,
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
}

class Screen2 extends StatefulWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  ProductPage createState() => ProductPage();
}
