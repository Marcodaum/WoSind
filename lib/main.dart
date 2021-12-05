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
              : profileContent(context));

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
            children: [
              projectsContent(context),
              marketplaceContent(context),
              profileContent(context),
            ]),
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
                    duration: const Duration(microseconds: 150000),
                    curve: Curves.linear),
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

// The data inserted in the constructor should later be called from the server -> Therefore it's currently okay to use constant Strings / Lists.
  @override
  ProductPage createState() => ProductPage(
      [
        "assets/Download.jpeg",
        "assets/Pool_2-1024x683.jpeg",
        "assets/unnamed.jpeg"
      ],
      "Poolbau",
      "Schwierigkeitsgrad mittel",
      " ",
      "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum.Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum.sss",
      [
        "assets/Download.jpeg",
        "assets/Pool_2-1024x683.jpeg",
        "assets/unnamed.jpeg"
      ]);
}
