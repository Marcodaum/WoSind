// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'mainColors.dart';

class mainLayout {
  static BorderRadius borderRadiusAll = BorderRadius.circular(20);
  static BorderRadius borderRadiusTop = const BorderRadius.only(
    topLeft: Radius.circular(30),
    topRight: Radius.circular(30),
  );

  static const TextStyle marketplaceHeadlineStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 20,
    color: mainColors.Text_white,
    fontFamily: 'Montserrat-Light',
  );

  static const TextStyle projectPageHedlines = TextStyle(
    fontSize: 20,
    color: mainColors.Text_black,
    fontFamily: 'Montserrat-Medium',
  );

  static const TextStyle projectDescription = TextStyle(
    fontSize: 15,
    color: mainColors.Text_description_grey,
    fontFamily: 'Montserrat-Medium',
  );

  static BoxShadow boxShadow = BoxShadow(
    color: Colors.grey.withOpacity(0.5),
    spreadRadius: 5,
    blurRadius: 7,
    offset: const Offset(0, 3), // changes position of shadow
  );

  Row dividerRow() {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Expanded(
        child: Container(
            margin: const EdgeInsets.only(left: 15.0, right: 10.0),
            child: const Divider(
              color: Colors.black,
              height: 25,
              thickness: 0.25,
            )),
      )
    ]);
  }

  Row textRow(String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Align(
          alignment: Alignment.center,
          child: Text(
            text,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: mainColors.main_btn,
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

  Row buttonRow(String text) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.only(left: 75),
          child: TextButton(
            child: Text(
              text,
              style: const TextStyle(
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
  }
}
