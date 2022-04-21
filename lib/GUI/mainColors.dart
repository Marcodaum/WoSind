// ignore_for_file: file_names, non_constant_identifier_names, camel_case_types, constant_identifier_names

import 'package:flutter/material.dart';

class mainColors {
  // Colors for LOGIN
  static const Color loginButtonText = Color.fromRGBO(0, 93, 90, 1);
  static const Color loginButtonBackground = Color.fromRGBO(120, 120, 120, 0.5);
  static const Color loginWrongInputErrorText = Color.fromRGBO(255, 0, 0, 1);

  static const Color main_btn = Color.fromRGBO(1, 139, 130, 1);
  static const Color heart_btn = Color.fromRGBO(140, 195, 155, 1);
  static const Color background = Color.fromRGBO(255, 255, 255, 1);
  static const Color Text_black = Color.fromRGBO(0, 0, 0, 1);
  static const Color Text_blue = Color.fromRGBO(25, 100, 255, 0.75);
  static const Color Text_description_grey = Color.fromRGBO(120, 120, 120, 1);
  static const Color Text_description_orange = Color.fromRGBO(255, 165, 0, 1);
  static const Color Button_unselected = Color.fromRGBO(120, 120, 120, 0.5);
  static const Color searchBarIcon_grey = Color.fromRGBO(100, 100, 100, 0.2);
  static const Color Text_white = Color.fromRGBO(255, 255, 255, 1);
  static const Color tools_description = Color.fromRGBO(0, 93, 90, 1);

  static const Color exit = Color.fromARGB(255, 255, 0, 0);

  static const Color notDone = Color.fromARGB(120, 120, 120, 120);
  static const Color done = Color.fromARGB(255, 0, 200, 0);

  static const LinearGradient large_btn = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment(0.8, 0.0), // 10% of the width, so there are ten blinds.
    colors: <Color>[
      Color.fromRGBO(24, 137, 123, 1),
      Color.fromRGBO(28, 77, 84, 1)
    ], // red to yellow
    tileMode: TileMode.repeated, // repeats the gradient over the canvas
  );

  static const Color selector_light_green = Color.fromRGBO(140, 195, 155, 1);
  static const Color selector_dark_green = Color.fromRGBO(1, 139, 130, 1);
}
