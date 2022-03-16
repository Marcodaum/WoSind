import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:wo_sind_app/database/profile.dart';

class Tool {
  String _img = 'assets/imagePlaceholder.png';
  String _title = "";
  String _tool = "";
  String _description = "";
  String _brand = "";
  String _location = "";
  String _price = "";
  bool _security = false;
  Profile _author = new Profile();

  Tool(String img, String title, String description, String tool, String brand,
      String location, String price, bool security, Profile author) {
    this._img = img;
    this._title = title;
    this._description = description;
    this._tool = tool;
    this._brand = brand;
    this._location = location;
    this._price = price;
    this._security = security;
    this._author = author;
  }

  @override
  String toString() {
    return this._title +
        ", " +
        this._description +
        ", " +
        this._tool +
        ", " +
        this._brand +
        ", " +
        this._location +
        ", " +
        this._price +
        ", " +
        this._security.toString();
  }

  String getImage() {
    return this._img;
  }

  void setImage(String img) {
    this._img = img;
  }

  String getTitle() {
    return this._title;
  }

  void setTitle(String title) {
    this._title = title;
  }

  String getTool() {
    return this._tool;
  }

  void setTool(String tool) {
    this._tool = tool;
  }

  String getDescription() {
    return this._description;
  }

  void setDescription(String description) {
    this._description = description;
  }

  String getBrand() {
    return this._brand;
  }

  void setBrand(String brand) {
    this._brand = brand;
  }

  String getLocation() {
    return this._location;
  }

  void setLocation(String location) {
    this._location = location;
  }

  String getPrice() {
    return this._price;
  }

  void setPrice(String price) {
    this._price = price;
  }

  bool getSecurity() {
    return this._security;
  }

  void setSecurity(bool security) {
    this._security = security;
  }

  Profile getAuthor() {
    return this._author;
  }

  void setAuthor(Profile author) {
    this._author = author;
  }
}
