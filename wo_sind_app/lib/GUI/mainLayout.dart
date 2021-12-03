import 'package:flutter/material.dart';
import 'mainColors.dart';

class mainLayout {
  static BorderRadius borderRadiusAll = BorderRadius.circular(20);
  static BorderRadius borderRadiusTop = BorderRadius.only(
    topLeft: Radius.circular(30),
    topRight: Radius.circular(30),
  );

  static const TextStyle marketplaceHeadlineStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 20,
    color: mainColors.Text_white,
  );

  static const TextStyle projectPageHedlines = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 20,
    color: mainColors.Text_black,
  );

  static const TextStyle projectDescription = TextStyle(
    fontSize: 15,
    color: mainColors.Text_description_grey,
  );

  static BoxShadow boxShadow = BoxShadow(
    color: Colors.grey.withOpacity(0.5),
    spreadRadius: 5,
    blurRadius: 7,
    offset: Offset(0, 3), // changes position of shadow
  );
}
