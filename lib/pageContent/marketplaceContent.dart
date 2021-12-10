// ignore_for_file: file_names

import 'package:flutter/material.dart';
import '../GUI/mainLayout.dart';
import '../GUI/mainColors.dart';
import '../main.dart';

const i = 0;

ElevatedButton createElevatedButton(BuildContext context, Color color) {
  return ElevatedButton(
      onPressed: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => const Screen2()));
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(color),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: mainLayout.borderRadiusAll,
          ),
        ),
      ),
      child: createChild());
}

Align createChild() {
  return const Align(
      alignment: Alignment.topLeft,
      child: Padding(
          padding: EdgeInsets.only(top: 16, left: 150),
          child: Text("Werkzeug", style: mainLayout.marketplaceHeadlineStyle)));
}

/*GridView marketplaceContent(BuildContext context) {
  return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 1,
      childAspectRatio: 3,
      children: <Widget>[
        createElevatedButton(context, mainColors.selector_dark_green),
        createElevatedButton(context, mainColors.selector_light_green),
        createElevatedButton(context, mainColors.selector_dark_green),
        createElevatedButton(context, mainColors.selector_light_green),
        createElevatedButton(context, mainColors.selector_dark_green),
      ]);
}*/

List<Widget> marketplaceContentRows(BuildContext context) {
  bool toolPage = true;
  List<Widget> widgets = <Widget>[];
  //Row entry1 = marketplaceEntry(context);
  //Row divider1 = mainLayout().dividerRow();
  //Row divider2 = mainLayout().dividerRow();
  //rows.add(divider1);
  //rows.add(entry1);
  //rows.add(divider2);
  RoundedSearchInput searchBar = RoundedSearchInput(
      hintText: "Bohrmaschine, Kettensäge, …",
      textController: TextEditingController());
  Row placeholderRow1 = placeholderRow();
  Row placeholderRow2 = placeholderRow();
  Row textRow1 = textRow();
  Row buttonRow = Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      SizedBox(
        width: 140,
        height: 50,
        child: TextButton(
          child: const Text(
            "Top Werkzeuge",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                //decoration: TextDecoration.underline,
                fontSize: 15,
                color: mainColors.Text_blue,
                shadows: [
                  Shadow(
                    blurRadius: 100.0,
                    color: Colors.grey,
                    offset: Offset(5.0, 5.0),
                  ),
                ]),
          ),
          onPressed: () {
            toolPage = true;
          },
        ),
      ),
      SizedBox(
        width: 140,
        height: 50,
        child: TextButton(
          child: const Text(
            "Top Projekte",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
              color: mainColors.Button_unselected,
            ),
          ),
          onPressed: () {
            toolPage = false;
          },
        ),
      )
    ],
  );

  widgets.add(placeholderRow1);
  widgets.add(textRow1);
  widgets.add(searchBar);
  widgets.add(buttonRow);

  if (toolPage) {
    Row toolRow1 = Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Container(
          width: 325,
          height: 183,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: mainColors.Button_unselected,
          ),
          margin: const EdgeInsets.only(top: 10, right: 0, bottom: 0, left: 0),
          padding: const EdgeInsets.only(top: 0, right: 0, bottom: 0, left: 0),
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
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text('Kleinbohrer mit Zubehör',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold)),
                              Text(
                                'Verleiher: Stefan Miller',
                                style: TextStyle(
                                    fontSize: 12, color: Colors.white),
                              ),
                            ],
                          ) /*const Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Bohrmaschine mit Zubehör\nVerleiher: Stefan Miller',
                          style: TextStyle(fontSize: 12, color: Colors.white),
                        ),
                      ),*/
                          )))
            ],
          )),
    ]);
    Row toolRow2 = Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Container(
          width: 325,
          height: 183,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: mainColors.Button_unselected,
          ),
          margin: const EdgeInsets.only(top: 15, right: 0, bottom: 0, left: 0),
          padding: const EdgeInsets.only(top: 0, right: 0, bottom: 0, left: 0),
          child: Stack(
            children: [
              Align(
                  alignment: Alignment.center,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Container(
                          decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/winkelschleifer.jpg'),
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
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text('Winkelschleifer und Kleinbohrer',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold)),
                              Text(
                                'Verleiher: OBI',
                                style: TextStyle(
                                    fontSize: 12, color: Colors.white),
                              ),
                            ],
                          ) /*const Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Bohrmaschine mit Zubehör\nVerleiher: Stefan Miller',
                          style: TextStyle(fontSize: 12, color: Colors.white),
                        ),
                      ),*/
                          )))
            ],
          )),
    ]);
    Row toolRow3 = Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Container(
          width: 325,
          height: 183,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: mainColors.Button_unselected,
          ),
          margin: const EdgeInsets.only(top: 15, right: 0, bottom: 0, left: 0),
          padding: const EdgeInsets.only(top: 0, right: 0, bottom: 0, left: 0),
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
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text('Schlagbohrer',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold)),
                              Text(
                                'Verleiher: Jonas Jehle',
                                style: TextStyle(
                                    fontSize: 12, color: Colors.white),
                              ),
                            ],
                          ) /*const Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Bohrmaschine mit Zubehör\nVerleiher: Stefan Miller',
                          style: TextStyle(fontSize: 12, color: Colors.white),
                        ),
                      ),*/
                          )))
            ],
          )),
    ]);

    widgets.add(toolRow1);
    widgets.add(toolRow2);
    widgets.add(toolRow3);
  }
  return widgets;
}

ListView marketplaceContent(BuildContext context) {
  return ListView(children: marketplaceContentRows(context));
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
