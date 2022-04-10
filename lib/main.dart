// ignore_for_file: no_logic_in_create_state

import 'package:flutter/material.dart';
import 'package:postgres/postgres.dart';
import 'package:wo_sind_app/GUI/mainColors.dart';
import 'package:wo_sind_app/GUI/mainLayout.dart';
import 'package:wo_sind_app/GUI/topAppBar.dart';
import 'package:wo_sind_app/pageContent/marketplaceContent.dart';
// main.dart

import '../GUI/topAppBar.dart';
import '../pageContent/marketplaceContent.dart';
import '../pageContent/projectsContent.dart';
import 'pageContent/productPage.dart';
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

  bool login = true;

  TextEditingController usernameController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: createAppBar(_selectedPage),
      body: login
          ? ListView(
              shrinkWrap: true,
              children: [
                mainLayout().placeholderRow(100),
                Center(child: mainLayout().textRow("LOGIN")),
                Center(
                    child: mainLayout()
                        .inputField("Username/E-Mail", usernameController)),
                Center(
                    child: mainLayout()
                        .inputFieldPassword("Password", passwordController)),
                Center(
                    child: Center(
                        child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        margin: EdgeInsets.all(10),
                        child: TextButton(
                          style: TextButton.styleFrom(
                            backgroundColor: mainColors.loginButtonBackground,
                            padding: EdgeInsets.all(15),
                          ),
                          child: Text(
                            "REGISTER",
                            style: TextStyle(
                                color: mainColors.loginButtonText,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          onPressed: () {},
                        )),
                    Container(
                        margin: EdgeInsets.all(10),
                        child: TextButton(
                          style: TextButton.styleFrom(
                            backgroundColor: mainColors.loginButtonBackground,
                            padding: EdgeInsets.all(15),
                          ),
                          child: Text("LOGIN",
                              style: TextStyle(
                                  color: mainColors.loginButtonText,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold)),
                          onPressed: () async {
                            if (await checkLogin(usernameController.text,
                                passwordController.text)) {
                              print("yes");
                              setState(() {
                                login = false;
                              });
                            } else {
                              setState(() {
                                login = true;
                                passwordController.text = "";
                              });
                            }
                          },
                        ))
                  ],
                ))),
              ],
            )
          : PageView(
              controller: _pageController,
              onPageChanged: (value) => setState(() => _selectedPage = value),
              // Create pages

              children: [
                  const projectPage(),
                  const toolPage(),
                  profileContent(context),
                  settingsContent(context),
                ]),
      bottomNavigationBar: !login
          ? BottomNavigationBar(
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
                ])
          : null,
    );
  }

  static Future<bool> checkLogin(String name, String password) async {
    var connection = PostgreSQLConnection("localhost", 5432, "WoSind-Tools",
        username: "kilianmack", password: "Keig17411mgd");
    await connection.open();

    var passwordOfUser = await connection
        .query("SELECT pwd FROM users WHERE username = '$name'");

    String returnedPassword = passwordOfUser.toString().replaceAll('[', "");
    returnedPassword = returnedPassword.replaceAll(']', "");

    print(returnedPassword);
    print(password);

    if (returnedPassword == password) {
      print("yes1");
      return true;
    } else {
      return false;
    }
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
          "Nachdem Du alle Rechts- und Standortfragen zu Deinem Pool geklärt hast, kannst Du mit dem Bau beginnen. Der erste Schritt ist der Aushub. Je nach der Höhe Deines Beckens bestimmst Du die Tiefe Deines Aushubs. Am besten eignet sich aber mindestens eine Tiefe von 1,20 Meter, damit der Pool komplett in der Erde verschwindet. Du kannst dazu ein Bauunternehmen beauftragen oder Dir einen Mini-Bagger leihen und selbst den Aushub vornehmen. Bodenplatte und Technik verlegen Die Bodenplatte bildet das Fundament für Deinen Swimmingpool. Erstelle dazu eine Schalung, die Du mit Beton befüllst. Dabei solltest Du schon die erforderlichen Rohrleitungen verlegen, damit das Wasser klar und keimfrei bleibt. Du benötigst Rohre für Filter, Pumpe, Skimmer, Ablauf und eventuell eine Beleuchtung. Pool im Rohbau Mauern oder Becken einsetzen Im nächsten Schritt musst Du die Wände mauern. Hier sind besonders Schalsteine zu empfehlen. Sie eignen sich gut um ein Becken zu erstellen. Vergiss bei dieser Variante nicht die entsprechende Technik zu verlegen, bevor sie mit Beton befüllt werden. Alternativ kann natürlich auch ein Stahlwandbecken eingesetzt werden. Dabei entfallen dann die nächsten Schritte. Dämmen, Verputzen und Isolieren Steht Dein Becken im Rohbau, kannst Du mit der Dämmung beginnen. Bringe an den Mauern Dämmmatten an bevor Du mit dem Verputzen startest. Ist das erledigt, empfiehlt es sich einen Isolieranstrich aufzutragen und die Außenwände mit Bitumenbahnen einzuflämmen, um Dein Becken gegen Feuchte aus der Erde zu schützen. Mit der Erde vom Aushub wird nun die Grube zwischen Becken und Erdreich verfüllt. Die Folie macht die Farbe Im vorletzten Schritt kleidest Du Dein Becken mit Folie aus. Die Folien sind in der Regel witterungsbeständig und damit resistent gegenüber Pilzen und Bakterien. Du kannst sie in verschiedenen Farben erwerben und dabei selbst entscheiden, wie Dein Pool erscheinen soll. Beim Auslegen ist darauf zu achten, dass Du überlappende Folienbahnen mit verklebst und versiegelst. Folien wir im Pool verlegt Wasser marsch! Deine Foliennähte sind dicht und die Technik angeschlossen, dann bleibt Dir nur noch den Wasserhahn aufzudrehen und den Pool zu befüllen. Deinem Badeerlebnis steht dann nichts mehr im Weg! Nach dem Poolbau kannst Du Dich noch der Gestaltung des Bereichs um das Schwimmbecken kümmern. Hier stehen Dir viele Möglichkeiten offen. Beispielsweise bietet es sich an mit Steinen oder Dielen einen Ruheort vom Schwimmen mit Garten- oder Loungemöbeln zu kreieren.",
          [
            "assets/Download.jpeg",
            "assets/heizungstechnik-schueller-pool-mit-wartungsluke.jpeg",
            "assets/pool_klein.jpeg",
            "assets/Poolbau.jpeg",
            "assets/unnamed.jpeg",
          ],
          [
            "assets/612e312384f12086149721.jpeg",
            "assets/Stihl-Steinflex-Trennschleifer@2x.jpeg",
            "assets/Minibagger.jpeg",
            "assets/Betonmischer.jpeg",
            "assets/Betonruettler.jpeg",
            "assets/pumpe.jpeg",
            "assets/driver.jpg",
          ]);
}
