// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:wo_sind_app/pageContent/productPage.dart';
import '../GUI/mainLayout.dart';
import '../GUI/mainColors.dart';
import '../main.dart';
import '../GUI/mainLayout.dart';

class toolPage extends StatefulWidget {
  const toolPage({Key? key}) : super(key: key);

  @override
  _ProjectPageState createState() => _ProjectPageState();
}

class _ProjectPageState extends State<toolPage> {
  bool toolPage = true;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        mainLayout().placeholderRow(),
        mainLayout().textRow_tools("Finde deine Werkzeuge"),
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
                style: TextButton.styleFrom(
                  primary: mainColors.tools_description,
                ),
                child: Text(
                  "Top Werkzeuge",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      //decoration: TextDecoration.underline,
                      fontSize: 15,
                      color: toolPage
                          ? mainColors.tools_description
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
                style: TextButton.styleFrom(
                  primary: mainColors.tools_description,
                ),
                child: Text(
                  "Alle Werkzeuge",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: toolPage
                        ? mainColors.Button_unselected
                        : mainColors.tools_description,
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
            ? recommendedRow(context, 'assets/driver.jpg',
                "Kleinbohrer mit Zubehör", "Vermieter: Stefan Miller")
            : recommendedRow(
                context,
                'assets/Stihl-Steinflex-Trennschleifer@2x.jpeg',
                "Steinflex",
                "Vermieter: Marco Daum"),
        toolPage
            ? recommendedRow(
                context,
                'assets/winkelschleifer.jpg',
                "Winkelschleifer und Kleinbohrer",
                "Vermieter: OBI-Markt Ingolstadt")
            : recommendedRow(
                context,
                'assets/Vertikutierer-Hand-871470-blp-msg.jpeg',
                "Vertikutiergerät",
                "Vermieter: Ciprian Cosneac"),
        toolPage
            ? recommendedRow(context, 'assets/drill2.jpg', "Schlagbohrer",
                "Vermieter: Jonas Jehle")
            : recommendedRow(context, 'assets/612e312384f12086149721.jpeg',
                "Rohrbiegemaschine", "Vermieter: Iris Eberl")
      ],
    );
  }
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
              color: mainColors.tools_description,
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

Row recommendedRow(
    BuildContext context, String image, String title, String author) {
  return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
    TextButton(
      onPressed: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => const Screen2()));
      },
      style: TextButton.styleFrom(primary: mainColors.selector_light_green),
      child: Container(
        width: 325,
        height: 183,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: mainColors.Button_unselected,
        ),
        margin: const EdgeInsets.only(top: 10, right: 0, bottom: 0, left: 0),
        padding: const EdgeInsets.only(top: 0, right: 0, bottom: 0, left: 0),
        child: Stack(children: [
          Align(
              alignment: Alignment.center,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Container(
                      decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(image), fit: BoxFit.fill),
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
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(title,
                              style: const TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                          Text(
                            author,
                            style: const TextStyle(
                                fontSize: 12, color: Colors.white),
                          ),
                        ],
                      ))))
        ]),
      ),
    )
  ]);
}
