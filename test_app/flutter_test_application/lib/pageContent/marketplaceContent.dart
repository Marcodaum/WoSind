// ignore_for_file: file_names

import 'package:flutter/material.dart';
import '../GUI/topAppBar.dart';
import '../GUI/bottomNavigationBar.dart';

ElevatedButton createElevatedButton(BuildContext context) {
  return ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(
            const Color.fromRGBO(100, 160, 90, 1.0)),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
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
          child: Text("Werkzeug",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ))));
}
