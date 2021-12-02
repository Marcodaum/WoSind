// ignore_for_file: file_names

import 'package:flutter/material.dart';

BottomNavigationBar createBottomNavigationBar(
    int index, PageController controller) {
  return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.green[200],
      currentIndex: index,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.blueGrey[600],
      showSelectedLabels: true,
      showUnselectedLabels: true,
      // Change page tap page number
      onTap: (value) => controller.animateToPage(value,
          duration: const Duration(microseconds: 250000), curve: Curves.easeIn),
      // Create page numbers
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.integration_instructions_outlined),
          label: 'Projekte',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart_outlined),
          label: 'Marktplatz',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profil',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings_outlined),
          label: 'Einstellungen',
        )
      ]);
}
