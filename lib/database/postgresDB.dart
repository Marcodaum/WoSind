import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:postgres/postgres.dart';

class PostgresDB {
  static final PostgresDB _instance = PostgresDB._internal();
  factory PostgresDB() => _instance;

  String username = "kilianmack";

  PostgresDB._internal() {}

  Future<void> fillInTool(
      String img,
      String title,
      String tool,
      String description,
      String brand,
      String location,
      String price,
      bool security) async {
    var connection = PostgreSQLConnection("localhost", 5432, "WoSind-Tools",
        username: "kilianmack", password: "Keig17411mgd");
    await connection.open();

    //Image image = Image.memory(base64Decode(img));

    final data = <String, dynamic>{
      "title": title,
      "category": tool,
      "description": description,
      "brand": brand,
      "price": price,
      "usernameRenter": username
    };

    await connection.execute(
        'INSERT INTO tools (${data.keys.join(', ')}) VALUES (${data.keys.map((k) => '@$k').join(', ')})',
        substitutionValues: data);

    await connection.close();
  }
}
