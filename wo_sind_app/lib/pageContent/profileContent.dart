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
  Row dividerRow1 = mainLayout().dividerRow();
  Row messagesRow = Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Container(
        margin: const EdgeInsets.only(left: 75),
        child: TextButton(
          child: const Text(
            "Nachrichten",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: mainColors.Text_black,
            ),
          ),
          onPressed: () {},
        ),
      )
    ],
  );
  Row dividerRow2 = mainLayout().dividerRow();
  Row dataRow = Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Container(
        margin: const EdgeInsets.only(left: 75),
        child: TextButton(
          child: const Text(
            "Persönliche Daten",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: mainColors.Text_black,
            ),
          ),
          onPressed: () {},
        ),
      )
    ],
  );
  Row dividerRow3 = mainLayout().dividerRow();
  Row shareRow = Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Container(
        margin: const EdgeInsets.only(left: 75),
        child: TextButton(
          child: const Text(
            "In anderen Apps teilen",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: mainColors.Text_black,
            ),
          ),
          onPressed: () {},
        ),
      )
    ],
  );
  Row dividerRow4 = mainLayout().dividerRow();
  Row editRow = Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Container(
        margin: const EdgeInsets.only(left: 75),
        child: TextButton(
          child: const Text(
            "Profil bearbeiten",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: mainColors.Text_black,
            ),
          ),
          onPressed: () {},
        ),
      )
    ],
  );
  Row dividerRow5 = mainLayout().dividerRow();
  rows.add(profilePictureRow);
  rows.add(nameRow);
  rows.add(dividerRow1);
  rows.add(messagesRow);
  rows.add(dividerRow2);
  rows.add(dataRow);
  rows.add(dividerRow3);
  rows.add(shareRow);
  rows.add(dividerRow4);
  rows.add(editRow);
  rows.add(dividerRow5);
  return rows;
}

ListView profileContent(BuildContext context) {
  return ListView(children: profileContentRows(context));
}
