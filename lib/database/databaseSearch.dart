import 'dart:collection';

import 'package:wo_sind_app/database/project.dart';
import 'package:wo_sind_app/database/tool.dart';

class DatabaseSearch {
  static final DatabaseSearch _instance = DatabaseSearch._internal();
  factory DatabaseSearch() => _instance;

  DatabaseSearch._internal() {}

  List<Tool>? searchTool(String search) {
    print(search);
    return null;
  }

  List<Project>? searchProject(String search) {
    return null;
  }
}
