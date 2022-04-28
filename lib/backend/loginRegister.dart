import 'dart:collection';

import 'package:postgres/postgres.dart';

class LoginRegister {
  static final LoginRegister _instance = LoginRegister._internal();
  factory LoginRegister() => _instance;

  LoginRegister._internal() {}

  // Method checks if the given username exists in the database wosind in the table users
  Future<bool> usernameExists(String username) async {
    var connection = PostgreSQLConnection("localhost", 5432, "WoSind-Tools",
        username: "kilianmack", password: "Keig17411mgd");
    await connection.open();
    var name = await connection.query(
        "SELECT username FROM users us WHERE EXISTS(SELECT 1 FROM users u WHERE us.username = '$username')");
    String trimmedName = name.toString().replaceAll('[', "");
    trimmedName = trimmedName.replaceAll(']', "");

    username = username.trim();
    trimmedName = trimmedName.trim();

    if (trimmedName == username) {
      return true;
    } else {
      return false;
    }
  }

  // Method checks if the given password matches with the given username
  // in the database wosind in the table users
  Future<bool> passwordCorrect(String username, String password) async {
    var connection = PostgreSQLConnection("localhost", 5432, "WoSind-Tools",
        username: "kilianmack", password: "Keig17411mgd");
    await connection.open();
    var pwd = await connection
        .query("SELECT pwd FROM users WHERE username = '$username'");
    String trimmedpwd = pwd.toString().replaceAll('[', "");
    trimmedpwd = trimmedpwd.replaceAll(']', "");

    password = password.trim();
    trimmedpwd = trimmedpwd.trim();

    if (trimmedpwd == password) {
      return true;
    } else {
      return false;
    }
  }

  bool passwordRequirements(String password) {
    String trimmedPassword = password.trim();

    if (trimmedPassword.length >= 8) {
      if (trimmedPassword.contains(new RegExp(r'[0-9]'))) {
        return true;
      } else {
        return false;
      }
    } else {
      return false;
    }
  }
}
