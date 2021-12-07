// ignore: file_names
// ignore_for_file: file_names

import 'package:flutter/material.dart';
import '../GUI/topAppBar.dart';
import '../GUI/mainLayout.dart';
import '../GUI/bottomNavigationBar.dart';
import './productPage.dart';
import '../GUI/mainColors.dart';

import '../main.dart';

const i = 0;

ElevatedButton createElevatedButton(BuildContext context, Color color) {
  return ElevatedButton(
      onPressed: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => Screen2()));
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

List<Row> marketplaceContentRows(BuildContext context) {
  List<Row> rows = <Row>[];
  Row entry1 = marketplaceEntry();
  Row divider1 = mainLayout().dividerRow();
  Row divider2 = mainLayout().dividerRow();
  rows.add(divider1);
  rows.add(entry1);
  rows.add(divider2);
  return rows;
}

ListView marketplaceContent(BuildContext context) {
  return ListView(children: marketplaceContentRows(context));
}

Row marketplaceEntry() {
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
          onPressed: () {},
        ),
      ),
      /*SizedBox(
        height: 50,
        width: 150,
        child: TextButton(
          style: TextButton.styleFrom(
              padding: EdgeInsets.zero, alignment: Alignment.centerLeft),
          child: const Align(
              alignment: Alignment.center,
              child: Text(
                "Hammer",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: mainColors.Text_black,
                ),
              )),
          onPressed: () {},
        ),
      ),*/
    ],
  );
}
