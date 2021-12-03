// ignore_for_file: file_names

import 'package:flutter/material.dart';
import '../GUI/topAppBar.dart';
import '../GUI/bottomNavigationBar.dart';
import './productPage.dart';
import 'package:wo_sind_app/GUI/mainColors.dart';

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

GridView marketplaceContent(BuildContext context) {
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
}
