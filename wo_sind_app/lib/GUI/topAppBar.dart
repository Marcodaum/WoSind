// ignore_for_file: file_names

import 'package:flutter/material.dart';

AppBar createAppBar(int index) {
  if (index == 0) {
    return AppBar(
      title: const Text("Projekte"),
      backgroundColor: Colors.green[200],
    );
  } else if (index == 1) {
    return AppBar(
      title: const Text("Marktplatz"),
      backgroundColor: Colors.green[200],
    );
  } else if (index == 2) {
    return AppBar(
      title: const Text("Profil"),
      backgroundColor: Colors.green[200],
    );
  } else {
    return AppBar(
      title: const Text("Einstellungen"),
      backgroundColor: Colors.green[200],
    );
  }
}
