// ignore_for_file: file_names

import 'package:flutter/material.dart';
import '../GUI/mainColors.dart';
import '../GUI/mainLayout.dart';

List<Row> profileContentRows(BuildContext context) {
  List<Row> rows = <Row>[];
  Row profilePictureRow = Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      const Text(
        "Abonennten \n\n 420",
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
          color: mainColors.Text_black,
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
          boxShadow: [mainLayout.boxShadow],
          //borderRadius: BorderRadius.circular(10.0),
          border: Border.all(
            color: mainColors.selector_light_green,
            width: 5,
          ),
        ),
        child: Image.asset('assets/profilePicture.png'),
      ),
      const Text(
        "Abonniert \n\n 69",
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
          color: mainColors.Text_black,
        ),
        textAlign: TextAlign.center,
      ),
    ],
  );
  Row nameRow = Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Expanded(
        child: Container(
            margin: const EdgeInsets.only(top: 5.0, bottom: 25.0),
            child: const Text(
              "Max Mustermann - Ingolstadt",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: mainColors.Text_black,
              ),
              textAlign: TextAlign.center,
            )),
      )
    ],
  );
  rows.add(profilePictureRow);
  rows.add(nameRow);
  rows.add(mainLayout().dividerRow());
  //rows.add(messagesRow);
  rows.add(mainLayout().buttonRow("Nachrichten"));
  rows.add(mainLayout().dividerRow());
  rows.add(mainLayout().buttonRow("Persönliche Daten"));
  rows.add(mainLayout().dividerRow());
  rows.add(mainLayout().buttonRow("In anderen Apps teilen"));
  rows.add(mainLayout().dividerRow());
  rows.add(mainLayout().buttonRow("Profil bearbeiten"));
  rows.add(mainLayout().dividerRow());
  return rows;
}

ListView profileContent(BuildContext context) {
  return ListView(children: profileContentRows(context));
}
