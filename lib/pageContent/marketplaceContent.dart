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
          onPressed: () {},
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
          onPressed: () {},
        ),
      )
    ],
  );
  widgets.add(placeholderRow1);
  widgets.add(textRow1);
  widgets.add(searchBar);
  widgets.add(buttonRow);
  //widgets.add(search);
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
  String test = "abc";
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
