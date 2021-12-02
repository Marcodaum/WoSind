// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:wo_sind_app/GUI/mainColors.dart';

AppBar createAppBar(int index) {
  if (index == 0) {
    return AppBar(
      backgroundColor: Color(0x4400000),
      elevation: 0,
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(20.0),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Align(
              alignment: Alignment.center,
              child: Text(
                'WOSIND',
                style: TextStyle(
                    color: mainColors.Text,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              )),
        ),
      ),
    );
  } else if (index == 1) {
    return AppBar(
      backgroundColor: Color(0x440000),
      elevation: 0,
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(20.0),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Align(
              alignment: Alignment.center,
              child: Text(
                'WOSIND',
                style: TextStyle(
                    color: mainColors.Text,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              )),
        ),
      ),
    );
  } else if (index == 2) {
    return AppBar(
      backgroundColor: Color(0x4400000),
      elevation: 0,
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(20.0),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Align(
              alignment: Alignment.center,
              child: Text(
                'WOSIND',
                style: TextStyle(
                    color: mainColors.Text,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              )),
        ),
      ),
    );
  } else {
    return AppBar(
      backgroundColor: Color(0x4400000),
      elevation: 0,
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(20.0),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Align(
              alignment: Alignment.center,
              child: Text(
                'WOSIND',
                style: TextStyle(
                    color: mainColors.Text,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              )),
        ),
      ),
    );
  }
}
