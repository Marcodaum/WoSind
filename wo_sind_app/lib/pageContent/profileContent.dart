// ignore_for_file: file_names

import 'package:flutter/material.dart';
import '../GUI/mainColors.dart';

List<Row> profileTestContent() {
  List<Row> rows = <Row>[];
  Row row1 = Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        "Abonennten \n\n 420",
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
          color: mainColors.Text,
        ),
        textAlign: TextAlign.center,
      ),
      Container(
        width: 150.0,
        height: 150.0,
        margin: const EdgeInsets.all(10.0),
        padding: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          //borderRadius: BorderRadius.circular(10.0),
          border: Border.all(
            color: mainColors.selector_light_green,
            width: 5,
          ),
        ),
        child: Image.asset('assets/profilePicture.png'),
      ),
      Text(
        "Abonniert \n\n 69",
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
          color: mainColors.Text,
        ),
        textAlign: TextAlign.center,
      ),
    ],
  );
  rows.add(row1);
  return rows;
}

ListView profileContent() {
  return ListView(children: profileTestContent());
}
/*GridView profileContent(BuildContext context) {
  return GridView.count(
    primary: false,
    padding: const EdgeInsets.all(20),
    crossAxisSpacing: 10,
    mainAxisSpacing: 10,
    crossAxisCount: 1,
    childAspectRatio: 3,
    children: <Widget>[
      Container(
        width: 300.0,
        height: 300.0,
        margin: const EdgeInsets.all(.0),
        padding: const EdgeInsets.all(12.5),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          //borderRadius: BorderRadius.circular(10.0),
          border: Border.all(
            color: mainColors.selector_light_green,
            width: 5,
          ),
        ),
        child: Image.asset('assets/profilePicture.png'),
      )
    ],
  );
}
*/