// ignore_for_file: no_logic_in_create_state

import 'package:flutter/material.dart';
import 'package:wo_sind_app/GUI/mainColors.dart';
import 'package:wo_sind_app/GUI/topAppBar.dart';
// main.dart

import '../GUI/topAppBar.dart';
import '../pageContent/marketplaceContent.dart';
import '../pageContent/projectsContent.dart';
import '../pageContent/productPage.dart';
import '../pageContent/profileContent.dart';
import '../pageContent/settingsContent.dart';

void main() => runApp(const MyApp());

/// This Widget is the main application widgeat.
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Montserrat-Medium'),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
            children: [
              const projectPage(),
              marketplaceContent(context),
              profileContent(context),
              settingsContent(context),
            ]),
        bottomNavigationBar:
            //createBottomNavigationBar(_selectedPage, _pageController)),
            BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                backgroundColor: mainColors.background,
                currentIndex: _selectedPage,
                selectedItemColor: mainColors.main_btn,
                unselectedItemColor: Colors.blueGrey[600],
                showSelectedLabels: true,
                showUnselectedLabels: true,
                // Change page tap page number
                onTap: (value) => _pageController.animateToPage(value,
                    duration: const Duration(microseconds: 250000),
                    curve: Curves.fastOutSlowIn),
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
              BottomNavigationBarItem(
                icon: Icon(Icons.settings_outlined),
                label: 'Einstellungen',
              ),
            ]));
  }
}

class Screen2 extends StatefulWidget {
  const Screen2({Key? key}) : super(key: key);

// The data inserted in the constructor should later be called from the server -> Therefore it's currently okay to use constant Strings / Lists.
  @override
  ProductPage createState() => ProductPage(
          "assets/Pool_2-1024x683.jpeg",
          "Poolbau",
          "Schwierigkeitsgrad mittel",
          " ",
          "Nachdem Du alle Rechts- und Standortfragen zu Deinem Pool geklärt hast, kannst Du mit dem Bau beginnen. Der erste Schritt ist der Aushub. Je nach der Höhe Deines Beckens bestimmst Du die Tiefe Deines Aushubs. Am besten eignet sich aber mindestens eine Tiefe von 1,20 Meter, damit der Pool komplett in der Erde verschwindet. Du kannst dazu ein Bauunternehmen beauftragen oder Dir einen Mini-Bagger leihen und selbst den Aushub vornehmen. Bodenplatte und Technik verlegen Die Bodenplatte bildet das Fundament für Deinen Swimmingpool. Erstelle dazu eine Schalung, die Du mit Beton befüllst. Dabei solltest Du schon die erforderlichen Rohrleitungen verlegen, damit das Wasser klar und keimfrei bleibt. Du benötigst Rohre für Filter, Pumpe, Skimmer, Ablauf und eventuell eine Beleuchtung. Pool im Rohbau Pool im Rohbau ®Adobe Stock Mauern oder Becken einsetzen Im nächsten Schritt musst Du die Wände mauern. Hier sind besonders Schalsteine zu empfehlen. Sie eignen sich gut um ein Becken zu erstellen. Vergiss bei dieser Variante nicht die entsprechende Technik zu verlegen, bevor sie mit Beton befüllt werden. Alternativ kann natürlich auch ein Stahlwandbecken eingesetzt werden. Dabei entfallen dann die nächsten Schritte. Dämmen, Verputzen und Isolieren Steht Dein Becken im Rohbau, kannst Du mit der Dämmung beginnen. Bringe an den Mauern Dämmmatten an bevor Du mit dem Verputzen startest. Ist das erledigt, empfiehlt es sich einen Isolieranstrich aufzutragen und die Außenwände mit Bitumenbahnen einzuflämmen, um Dein Becken gegen Feuchte aus der Erde zu schützen. Mit der Erde vom Aushub wird nun die Grube zwischen Becken und Erdreich verfüllt. Die Folie macht die Farbe Im vorletzten Schritt kleidest Du Dein Becken mit Folie aus. Die Folien sind in der Regel witterungsbeständig und damit resistent gegenüber Pilzen und Bakterien. Du kannst sie in verschiedenen Farben erwerben und dabei selbst entscheiden, wie Dein Pool erscheinen soll. Beim Auslegen ist darauf zu achten, dass Du überlappende Folienbahnen mit verklebst und versiegelst. Folien wir im Pool verlegt Wasser marsch! Deine Foliennähte sind dicht und die Technik angeschlossen, dann bleibt Dir nur noch den Wasserhahn aufzudrehen und den Pool zu befüllen. Deinem Badeerlebnis steht dann nichts mehr im Weg! Nach dem Poolbau kannst Du Dich noch der Gestaltung des Bereichs um das Schwimmbecken kümmern. Hier stehen Dir viele Möglichkeiten offen. Beispielsweise bietet es sich an mit Steinen oder Dielen einen Ruheort vom Schwimmen mit Garten- oder Loungemöbeln zu kreieren.",
          [
            "assets/Minibagger.jpeg",
            "assets/Betonmischer.jpeg",
            "assets/Betonruettler.jpeg",
            "assets/pumpe.jpeg",
            "assets/driver.jpg",
          ]);
}
