// main.dart

import 'package:flutter/material.dart';

import '../GUI/topAppBar.dart';
import '../GUI/bottomNavigationBar.dart';
import '../pageContent/marketplaceContent.dart';
import '../pageContent/productPage.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final int _pageAmount = 3;

  final _pageController = PageController(initialPage: 1);
  int _selectedPage = 1;

  bool product = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: createAppBar(_selectedPage),
            /*appBar: AppBar(
            title: const Text('WoSind'), backgroundColor: Colors.lightGreen),*/
            body: PageView(
              controller: _pageController,
              onPageChanged: (value) => setState(() => _selectedPage = value),
              // Create pages
              children: List<Scaffold>.generate(_pageAmount,
                  (index) => _createPage(title: 'Page ${index + 1}')),
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
                ])));
  }

  _createPage({required String title}) => Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: //test());
          marketplaceContent(context));
}

/*GridView createContent(){

}*/

GridView projectsContent(BuildContext context) {
  return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 1,
      childAspectRatio: 3,
      children: <Widget>[]);
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

GridView profileContent(BuildContext context) {
  return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 1,
      childAspectRatio: 3,
      children: <Widget>[]);
}

GridView settingsContent(BuildContext context) {
  return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 1,
      childAspectRatio: 3,
      children: <Widget>[]);
}

Column test() {
  return Column(
    mainAxisSize: MainAxisSize.min,
    children: <Widget>[
      Padding(
        padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
        child: Text(
          'Hammer',
          style: TextStyle(fontSize: 25),
        ),
      ),
      Expanded(
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) => Card(
            child: Center(
                child: Text(
                    '                                              Picture                                                  ')),
          ),
        ),
      ),
      Text(
        'Anbieter',
        style: TextStyle(fontSize: 18),
      ),
      Expanded(
        child: ListView.builder(
          shrinkWrap: true,
          itemBuilder: (ctx, int) {
            return Card(
              child: ListTile(
                  title: Text('Anbieter $int'), subtitle: Text('Beschreibung')),
            );
          },
        ),
      ),
    ],
  );
}
