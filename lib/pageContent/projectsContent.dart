// ignore_for_file: file_names

import 'package:flutter/material.dart';

GridView projectsContent(BuildContext context) {
  return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 1,
      childAspectRatio: 3,
      children: const <Widget>[Text("Projekte")]);
}
