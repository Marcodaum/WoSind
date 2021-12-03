// ignore_for_file: file_names, non_constant_identifier_names, camel_case_types

import 'package:flutter/material.dart';

class mainColors {
<<<<<<< HEAD
  static const Color main_btn = Color.fromRGBO(1, 139, 130, 1);
  static const Color heart_btn = Color.fromRGBO(140, 195, 155, 1);
  static const Color background = Color.fromRGBO(240, 240, 240, 1);
  static const Color Text_black = Color.fromRGBO(0, 0, 0, 1);
  static const Color Text_description_grey = Color.fromRGBO(120, 120, 120, 1);
  static const Color Text_white = Color.fromRGBO(255, 255, 255, 1);

  static const LinearGradient large_btn = LinearGradient(
=======
  static Color main_btn = const Color.fromRGBO(1, 139, 130, 1);
  static Color heart_btn = const Color.fromRGBO(140, 195, 155, 1);
  static Color background = const Color.fromRGBO(240, 240, 240, 1);
  static Color Text = const Color.fromRGBO(0, 0, 0, 1);
  static Color Text_description = const Color.fromRGBO(120, 120, 120, 1);
  static LinearGradient large_btn = const LinearGradient(
>>>>>>> b9de4ec5f0e4464ef14177781c652acf270b0cfe
    begin: Alignment.topLeft,
    end: Alignment(0.8, 0.0), // 10% of the width, so there are ten blinds.
    colors: <Color>[
      Color.fromRGBO(24, 137, 123, 1),
      Color.fromRGBO(28, 77, 84, 1)
    ], // red to yellow
    tileMode: TileMode.repeated, // repeats the gradient over the canvas
  );

<<<<<<< HEAD
  static const Color selector_light_green = Color.fromRGBO(140, 195, 155, 1);
  static const Color selector_dark_green = Color.fromRGBO(1, 139, 130, 1);
=======
  static Color selector_light_green = const Color.fromRGBO(140, 195, 155, 1);
  static Color selector_dark_green = const Color.fromRGBO(1, 139, 130, 1);
>>>>>>> b9de4ec5f0e4464ef14177781c652acf270b0cfe
}
