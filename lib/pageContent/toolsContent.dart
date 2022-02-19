// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wo_sind_app/GUI/marketplaceLayout.dart';
import 'package:wo_sind_app/database/database.dart';
import 'package:wo_sind_app/database/profile.dart';
import 'package:wo_sind_app/database/tool.dart';
import 'package:wo_sind_app/pageContent/productPage.dart';
import 'package:wo_sind_app/pageContent/projectsContent.dart';
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
  bool addPage = false;
  bool toolPage = true;

  final imgController = TextEditingController();
  final titleController = TextEditingController();
  final toolController = TextEditingController();
  final descriptionController = TextEditingController();
  final brandController = TextEditingController();
  final locationController = TextEditingController();
  final priceController = TextEditingController();
  bool security = false;

  var database = Database();
  List<Tool> tools = [];

  var profile = Profile();

  @override
  Widget build(BuildContext context) {
    toolPage
        ? tools = database.getTopValues()
        : tools = database.getAllValues();
    return !addPage
        ? ListView(
            children: [
              mainLayout().placeholderRow(),
              mainLayout().textRow("Vermiete eigenes Werkzeug"),
              mainLayout().placeholderRow(),
              IconButton(
                  padding: new EdgeInsets.all(0.0),
                  color: mainColors.Button_unselected,
                  onPressed: () {
                    setState(() {
                      addPage = true;
                    });
                  },
                  icon: Icon(Icons.add_circle_outline_rounded, size: 50.0)),
              mainLayout().placeholderRow(),
              mainLayout().textRow("oder..."),
              mainLayout().placeholderRow(),
              mainLayout().textRow("Finde passendes Werkzeuge"),
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
              for (var tool in tools)
                marketplaceLayout()
                    .recommendedRow(context, tool.img, tool.title, tool.author),
              /*toolPage
                  ? marketplaceLayout().recommendedRow(
                      context,
                      'assets/driver.jpg',
                      "Kleinbohrer mit Zubehör",
                      "Vermieter: Stefan Miller")
                  : marketplaceLayout().recommendedRow(
                      context,
                      'assets/Stihl-Steinflex-Trennschleifer@2x.jpeg',
                      "Steinflex",
                      "Vermieter: Marco Daum"),
              toolPage
                  ? marketplaceLayout().recommendedRow(
                      context,
                      'assets/winkelschleifer.jpg',
                      "Winkelschleifer und Kleinbohrer",
                      "Vermieter: OBI-Markt Ingolstadt")
                  : marketplaceLayout().recommendedRow(
                      context,
                      'assets/Vertikutierer-Hand-871470-blp-msg.jpeg',
                      "Vertikutiergerät",
                      "Vermieter: Ciprian Cosneac"),
              toolPage
                  ? marketplaceLayout().recommendedRow(
                      context,
                      'assets/drill2.jpg',
                      "Schlagbohrer",
                      "Vermieter: Jonas Jehle")
                  : marketplaceLayout().recommendedRow(
                      context,
                      'assets/612e312384f12086149721.jpeg',
                      "Rohrbiegemaschine",
                      "Vermieter: Iris Eberl")*/
            ],
          )
        : ListView(
            children: [
              mainLayout().placeholderRow(),
              mainLayout().textRow("Zurück zur Suche"),
              mainLayout().placeholderRow(),
              IconButton(
                  padding: new EdgeInsets.all(0.0),
                  color: mainColors.exit,
                  onPressed: () {
                    setState(() {
                      clearInputs();

                      addPage = false;
                    });
                  },
                  icon: Icon(Icons.close, size: 50.0)),
              mainLayout().placeholderRow(),
              mainLayout().textRow("oder..."),
              mainLayout().placeholderRow(),
              mainLayout().textRow("Vermiete dein Werkzeug"),
              mainLayout().placeholderRow(),
              mainLayout().inputField("Bild", imgController),
              mainLayout().inputField("Titel (*)", titleController),
              mainLayout().inputField("Werkzeug (*)", toolController),
              mainLayout().inputTextArea("Beschreibung", descriptionController),
              mainLayout().inputField("Marke", brandController),
              mainLayout().inputField("Ort (*)", locationController),
              mainLayout()
                  .inputFieldOnlyNumbers("Preis in € (*)", priceController),
              mainLayout().placeholderRow(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Sicherheitsvorschriften (*)",
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: mainColors.Text_description_grey,
                      ),
                    ),
                  ),
                  Checkbox(
                    value: security,
                    onChanged: (value) {
                      setState(() {
                        this.security = value!;
                      });
                    },
                  )
                ],
              ),
              mainLayout().placeholderRow(),
              mainLayout().infoTextRow("(*) Feld muss ausgefüllt werden"),
              mainLayout().placeholderRow(),
              mainLayout().textRow("Werkzeug öffentlich anbieten"),
              mainLayout().placeholderRow(),
              IconButton(
                  padding: new EdgeInsets.all(0.0),
                  color: mainColors.done,
                  onPressed: () {
                    setState(() {
                      fillToolInDatabase(
                          imgController.text,
                          titleController.text,
                          toolController.text,
                          descriptionController.text,
                          brandController.text,
                          locationController.text,
                          priceController.text,
                          security);

                      clearInputs();

                      security = false;
                      addPage = false;
                    });
                  },
                  icon: Icon(Icons.done, size: 50.0)),
              /*!database.hiredOutIsEmpty()
                  ? mainLayout()
                      .textRow_tools(database.getLastHiredOut().toString())
                  : mainLayout().textRow("no entry"),*/
            ],
          );
  }

  void fillToolInDatabase(
      String img,
      String title,
      String tool,
      String description,
      String brand,
      String location,
      String price,
      bool security) {
    database.addHiredOut(Tool(img, title, tool, description, brand, location,
        price, security, profile.name));
  }

  void clearInputs() {
    imgController.text = "";
    titleController.text = "";
    toolController.text = "";
    descriptionController.text = "";
    brandController.text = "";
    locationController.text = "";
    priceController.text = "";
    security = false;
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
