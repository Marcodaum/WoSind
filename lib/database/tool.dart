import 'dart:ui';

import 'package:flutter/material.dart';

class Tool {
  int id = 0;
  String img = 'assets/imagePlaceholder.png';
  //Image img = Icon(Icons.camera) as Image;
  String title = "";
  String tool = "";
  String description = "";
  String brand = "";
  String location = "";
  String price = "";
  bool security = false;

  Tool(int id, String img, String title, String description, String tool,
      String brand, String location, String price, bool security) {
    this.img = img;
    this.title = title;
    this.description = description;
    this.tool = tool;
    this.brand = brand;
    this.location = location;
    this.price = price;
    this.security = security;
  }

  @override
  String toString() {
    return this.title +
        ", " +
        this.description +
        ", " +
        this.tool +
        ", " +
        this.brand +
        ", " +
        this.location +
        ", " +
        this.price +
        ", " +
        this.security.toString();
  }
}
