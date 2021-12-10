// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import '../GUI/mainLayout.dart';
import '../GUI/mainColors.dart';
import '../main.dart';

class projectPage extends StatefulWidget {
  const projectPage({Key? key}) : super(key: key);

  @override
  _ProjectPageState createState() => _ProjectPageState();
}

class _ProjectPageState extends State<projectPage> {
  bool toolPage = true;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        placeholderRow(),
        textRow(),
        RoundedSearchInput(
            hintText: "Bohrmaschine, Kettensäge, …",
            textController: TextEditingController()),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: 140,
              height: 50,
              child: TextButton(
                child: Text(
                  "Top Werkzeuge",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      //decoration: TextDecoration.underline,
                      fontSize: 15,
                      color: toolPage
                          ? mainColors.Text_blue
                          : mainColors.Button_unselected,
                      shadows: const [
                        Shadow(
                          blurRadius: 100.0,
                          color: Colors.grey,
                          offset: Offset(5.0, 5.0),
                        ),
                      ]),
                ),
                onPressed: () {
                  setState(() {
                    toolPage = true;
                  });
                },
              ),
            ),
            SizedBox(
              width: 140,
              height: 50,
              child: TextButton(
                child: Text(
                  "Top Projekte",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: toolPage
                        ? mainColors.Button_unselected
                        : mainColors.Text_blue,
                  ),
                ),
                onPressed: () {
                  setState(() {
                    toolPage = false;
                  });
                },
              ),
            )
          ],
        ),
        toolPage
            ? Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Container(
                    width: 325,
                    height: 183,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: mainColors.Button_unselected,
                    ),
                    margin: const EdgeInsets.only(
                        top: 10, right: 0, bottom: 0, left: 0),
                    padding: const EdgeInsets.only(
                        top: 0, right: 0, bottom: 0, left: 0),
                    child: Stack(
                      children: [
                        Align(
                            alignment: Alignment.center,
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(20.0),
                                child: Container(
                                    decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('assets/driver.jpg'),
                                      fit: BoxFit.fill),
                                )))),
                        Positioned(
                            // The Positioned widget is used to position the text inside the Stack widget
                            bottom: 0,
                            right: 0,
                            child: ClipRRect(
                                borderRadius: const BorderRadius.only(
                                    bottomRight: Radius.circular(20),
                                    bottomLeft: Radius.circular(20)),
                                child: Container(
                                    // We use this Container to create a black box that wraps the white text so that the user can read the text even when the image is white
                                    width: 325,
                                    height: 40,
                                    color: Colors.black.withOpacity(0.5),
                                    margin: const EdgeInsets.only(bottom: 0),
                                    padding: const EdgeInsets.all(0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: const [
                                        Text('Kleinbohrer mit Zubehör',
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold)),
                                        Text(
                                          'Verleiher: Stefan Miller',
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.white),
                                        ),
                                      ],
                                    ))))
                      ],
                    )),
              ])
            : Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Container(
                    width: 325,
                    height: 183,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: mainColors.Button_unselected,
                    ),
                    margin: const EdgeInsets.only(
                        top: 10, right: 0, bottom: 0, left: 0),
                    padding: const EdgeInsets.only(
                        top: 0, right: 0, bottom: 0, left: 0),
                    child: Stack(
                      children: [
                        Align(
                            alignment: Alignment.center,
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(20.0),
                                child: Container(
                                    decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('assets/hecke.jpg'),
                                      fit: BoxFit.fill),
                                )))),
                        Positioned(
                            // The Positioned widget is used to position the text inside the Stack widget
                            bottom: 0,
                            right: 0,
                            child: ClipRRect(
                                borderRadius: const BorderRadius.only(
                                    bottomRight: Radius.circular(20),
                                    bottomLeft: Radius.circular(20)),
                                child: Container(
                                    // We use this Container to create a black box that wraps the white text so that the user can read the text even when the image is white
                                    width: 325,
                                    height: 40,
                                    color: Colors.black.withOpacity(0.5),
                                    margin: const EdgeInsets.only(bottom: 0),
                                    padding: const EdgeInsets.all(0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: const [
                                        Text('Heckenmuster',
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold)),
                                        Text(
                                          'Verfasser: Marco Daum',
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.white),
                                        ),
                                      ],
                                    ))))
                      ],
                    )),
              ]),
        toolPage
            ? Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Container(
                    width: 325,
                    height: 183,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: mainColors.Button_unselected,
                    ),
                    margin: const EdgeInsets.only(
                        top: 15, right: 0, bottom: 0, left: 0),
                    padding: const EdgeInsets.only(
                        top: 0, right: 0, bottom: 0, left: 0),
                    child: Stack(
                      children: [
                        Align(
                            alignment: Alignment.center,
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(20.0),
                                child: Container(
                                    decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/winkelschleifer.jpg'),
                                      fit: BoxFit.fill),
                                )))),
                        Positioned(
                            // The Positioned widget is used to position the text inside the Stack widget
                            bottom: 0,
                            right: 0,
                            child: ClipRRect(
                                borderRadius: const BorderRadius.only(
                                    bottomRight: Radius.circular(20),
                                    bottomLeft: Radius.circular(20)),
                                child: Container(
                                    // We use this Container to create a black box that wraps the white text so that the user can read the text even when the image is white
                                    width: 325,
                                    height: 40,
                                    color: Colors.black.withOpacity(0.5),
                                    margin: const EdgeInsets.only(bottom: 0),
                                    padding: const EdgeInsets.all(0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: const [
                                        Text('Winkelschleifer und Kleinbohrer',
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold)),
                                        Text(
                                          'Verleiher: OBI',
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.white),
                                        ),
                                      ],
                                    ))))
                      ],
                    )),
              ])
            : Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Container(
                    width: 325,
                    height: 183,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: mainColors.Button_unselected,
                    ),
                    margin: const EdgeInsets.only(
                        top: 10, right: 0, bottom: 0, left: 0),
                    padding: const EdgeInsets.only(
                        top: 0, right: 0, bottom: 0, left: 0),
                    child: Stack(
                      children: [
                        Align(
                            alignment: Alignment.center,
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(20.0),
                                child: Container(
                                    decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('assets/hütte.jpg'),
                                      fit: BoxFit.fill),
                                )))),
                        Positioned(
                            // The Positioned widget is used to position the text inside the Stack widget
                            bottom: 0,
                            right: 0,
                            child: ClipRRect(
                                borderRadius: const BorderRadius.only(
                                    bottomRight: Radius.circular(20),
                                    bottomLeft: Radius.circular(20)),
                                child: Container(
                                    // We use this Container to create a black box that wraps the white text so that the user can read the text even when the image is white
                                    width: 325,
                                    height: 40,
                                    color: Colors.black.withOpacity(0.5),
                                    margin: const EdgeInsets.only(bottom: 0),
                                    padding: const EdgeInsets.all(0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: const [
                                        Text('Gartenhütte',
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold)),
                                        Text(
                                          'Verfasser: Ciprian Cosneac',
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.white),
                                        ),
                                      ],
                                    ))))
                      ],
                    )),
              ]),
        toolPage
            ? Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Container(
                    width: 325,
                    height: 183,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: mainColors.Button_unselected,
                    ),
                    margin: const EdgeInsets.only(
                        top: 15, right: 0, bottom: 0, left: 0),
                    padding: const EdgeInsets.only(
                        top: 0, right: 0, bottom: 0, left: 0),
                    child: Stack(
                      children: [
                        Align(
                            alignment: Alignment.center,
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(20.0),
                                child: Container(
                                    decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('assets/drill2.jpg'),
                                      fit: BoxFit.fill),
                                )))),
                        Positioned(
                            // The Positioned widget is used to position the text inside the Stack widget
                            bottom: 0,
                            right: 0,
                            child: ClipRRect(
                                borderRadius: const BorderRadius.only(
                                    bottomRight: Radius.circular(20),
                                    bottomLeft: Radius.circular(20)),
                                child: Container(
                                    // We use this Container to create a black box that wraps the white text so that the user can read the text even when the image is white
                                    width: 325,
                                    height: 40,
                                    color: Colors.black.withOpacity(0.5),
                                    margin: const EdgeInsets.only(bottom: 0),
                                    padding: const EdgeInsets.all(0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: const [
                                        Text('Schlagbohrer',
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold)),
                                        Text(
                                          'Verleiher: Jonas Jehle',
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.white),
                                        ),
                                      ],
                                    ))))
                      ],
                    )),
              ])
            : Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Container(
                    width: 325,
                    height: 183,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: mainColors.Button_unselected,
                    ),
                    margin: const EdgeInsets.only(
                        top: 10, right: 0, bottom: 0, left: 0),
                    padding: const EdgeInsets.only(
                        top: 0, right: 0, bottom: 0, left: 0),
                    child: Stack(
                      children: [
                        Align(
                            alignment: Alignment.center,
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(20.0),
                                child: Container(
                                    decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('assets/blume.jpg'),
                                      fit: BoxFit.fill),
                                )))),
                        Positioned(
                            // The Positioned widget is used to position the text inside the Stack widget
                            bottom: 0,
                            right: 0,
                            child: ClipRRect(
                                borderRadius: const BorderRadius.only(
                                    bottomRight: Radius.circular(20),
                                    bottomLeft: Radius.circular(20)),
                                child: Container(
                                    // We use this Container to create a black box that wraps the white text so that the user can read the text even when the image is white
                                    width: 325,
                                    height: 40,
                                    color: Colors.black.withOpacity(0.5),
                                    margin: const EdgeInsets.only(bottom: 0),
                                    padding: const EdgeInsets.all(0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: const [
                                        Text('Pflanze umtopfen',
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold)),
                                        Text(
                                          'Verfasser: Iris Eberl',
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.white),
                                        ),
                                      ],
                                    ))))
                      ],
                    )),
              ]),
      ],
    );
  }
}

Row marketplaceEntry(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Container(
        width: 100.0,
        height: 100.0,
        margin: const EdgeInsets.all(20.0),
        padding: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          boxShadow: [mainLayout.boxShadow],
          //borderRadius: BorderRadius.circular(10.0),
          border: Border.all(
            color: mainColors.selector_light_green,
            width: 2,
          ),
        ),
        child: Image.asset('assets/hammer.png'),
      ),
      SizedBox(
        height: 100,
        width: 200,
        child: TextButton(
          style: TextButton.styleFrom(
              padding: EdgeInsets.zero, alignment: Alignment.centerLeft),
          child: Align(
              alignment: Alignment.centerLeft,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const <Widget>[
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Hammer",
                          textAlign: TextAlign.left,
                          maxLines: 1,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: mainColors.Text_black,
                          ),
                        )),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "\t\t\tPrice: 69€",
                          textAlign: TextAlign.left,
                          maxLines: 1,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: mainColors.Text_description_grey,
                          ),
                        )),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "\t\t\tAvailability: 3 days",
                          textAlign: TextAlign.left,
                          maxLines: 1,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: mainColors.Text_description_grey,
                          ),
                        )),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "\t\t\tDuration: 1 week",
                          textAlign: TextAlign.left,
                          maxLines: 1,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: mainColors.Text_description_grey,
                          ),
                        )),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "\t\t\tSafety regulation: No",
                          textAlign: TextAlign.left,
                          maxLines: 1,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: mainColors.Text_description_grey,
                          ),
                        )),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "\t\t\tRating: 3/5",
                          textAlign: TextAlign.left,
                          maxLines: 1,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: mainColors.Text_description_grey,
                          ),
                        )),
                  ])),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Screen2()),
            );
          },
        ),
      ),
    ],
  );
}

Row textRow() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: const [
      Align(
        alignment: Alignment.center,
        child: Text(
          "Finde deine Werkzeuge...",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: mainColors.Text_blue,
          ),
        ),
      )
    ],
  );
}

Row placeholderRow() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: const [
      SizedBox(
        height: 20,
        width: 100,
      ),
    ],
  );
}

class RoundedSearchInput extends StatelessWidget {
  final TextEditingController textController;
  final String hintText;
  const RoundedSearchInput(
      {required this.textController, required this.hintText, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
          top: 30.0, right: 40.0, left: 40.0, bottom: 20.0),
      padding: const EdgeInsets.all(0),
      decoration: const BoxDecoration(boxShadow: [
        BoxShadow(
            offset: Offset(12, 26),
            blurRadius: 1000,
            spreadRadius: 1,
            color: Colors.grey),
      ]),
      child: TextField(
        controller: textController,
        onChanged: (value) {
          //Do something wi
        },
        decoration: InputDecoration(
          suffixIcon: Container(
            width: 20,
            height: 20,
            padding: const EdgeInsets.all(0),
            margin: const EdgeInsets.only(top: 5, right: 10, bottom: 5),
            child: const Icon(
              Icons.search,
              color: mainColors.selector_dark_green,
              size: 25,
            ),
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: mainColors.searchBarIcon_grey),
          ),
          filled: true,
          fillColor: Colors.white,
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.black.withOpacity(.25)),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(45.0)),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey[300]!, width: 1.0),
            borderRadius: const BorderRadius.all(Radius.circular(45.0)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey[400]!, width: 1.5),
            borderRadius: const BorderRadius.all(Radius.circular(45.0)),
          ),
        ),
      ),
    );
  }
}
