import 'package:flutter/material.dart';

class mainColors {
  static const Color main_btn = Color.fromRGBO(1, 139, 130, 1);
  static const Color heart_btn = Color.fromRGBO(140, 195, 155, 1);
  static const Color background = Color.fromRGBO(240, 240, 240, 1);
  static const Color Text_black = Color.fromRGBO(0, 0, 0, 1);
  static const Color Text_description_grey = Color.fromRGBO(120, 120, 120, 1);
  static const Color Text_white = Color.fromRGBO(255, 255, 255, 1);

  static const LinearGradient large_btn = LinearGradient(
    begin: Alignment.topLeft,
    end:
        const Alignment(0.8, 0.0), // 10% of the width, so there are ten blinds.
    colors: const <Color>[
      Color.fromRGBO(24, 137, 123, 1),
      Color.fromRGBO(28, 77, 84, 1)
    ], // red to yellow
    tileMode: TileMode.repeated, // repeats the gradient over the canvas
  );

  static const Color selector_light_green = Color.fromRGBO(140, 195, 155, 1);
  static const Color selector_dark_green = Color.fromRGBO(1, 139, 130, 1);
}
