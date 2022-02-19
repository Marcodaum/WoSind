import 'dart:collection';

import 'package:wo_sind_app/database/tool.dart';

class Database {
  static final Database _instance = Database._internal();
  factory Database() => _instance;

  Database._internal() {
    _topTools[id++] = new Tool("assets/driver.jpg", "Akkuschrauber",
        "Akkuschrauber", "abc", "Bosch", "Ingolstadt", "5", false, "OBI");
    _topTools[id++] = new Tool("assets/Betonmischer.jpeg", "Akkuschrauber",
        "Akkuschrauber", "abc", "Bosch", "Ingolstadt", "5", false, "OBI");
    _topTools[id++] = new Tool("assets/drill2.jpg", "Akkuschrauber",
        "Akkuschrauber", "abc", "Bosch", "Ingolstadt", "5", false, "OBI");
  }

  // Methods, variables ...
  int id = 0;

  HashMap<int, Tool> _hired = new HashMap<int, Tool>();
  HashMap<int, Tool> _hiredOut = new HashMap<int, Tool>();

  HashMap<int, Tool> _topTools = new HashMap<int, Tool>();
  HashMap<int, Tool> _allTools = new HashMap<int, Tool>();

  void addHiredOut(Tool tool) {
    _hiredOut[id++] = tool;

    _allTools[id] = tool;
  }

  void addMultipleHiredOut(List<Tool> tools) {
    tools.forEach((tool) {
      _hiredOut[id++] = tool;
    });
  }

  void addHired(Tool tool) {
    _hired[id++] = tool;
  }

  void addMultipleHired(List<Tool> tools) {
    tools.forEach((tool) {
      _hired[id++] = tool;
    });
  }

  bool hiredOutIsEmpty() {
    return _hiredOut.isEmpty;
  }

  bool hiredIsEmpty() {
    return _hired.isEmpty;
  }

  List<Tool> getHiredOutValues() {
    List<Tool> list = [];

    _hiredOut.forEach((id, tool) {
      list.add(tool);
    });

    return list;
  }

  List<Tool> getHiredValues() {
    List<Tool> list = [];

    _hired.forEach((id, tool) {
      list.add(tool);
    });

    return list;
  }

  List<Tool> getTopValues() {
    List<Tool> list = [];

    _topTools.forEach((id, tool) {
      list.add(tool);
    });

    return list;
  }

  List<Tool> getAllValues() {
    List<Tool> list = [];

    _allTools.forEach((id, tool) {
      list.add(tool);
    });

    return list;
  }

  Tool? getToolById(int id) {
    Tool? tool;
    _hiredOut.forEach((key, value) {
      if (key == id) {
        tool = value;
      }
    });
    _hired.forEach((key, value) {
      if (key == id) {
        tool = value;
      }
    });
    return tool;
  }

  /*Tool getFirstHiredOut() {
    if (!hiredOutIsEmpty()) {
      return _hiredOut.first;
    } else {
      return Tool('assets/imagePlaceholder.png', "", "", "", "", "", "", false);
    }
  }

  Tool getLastHiredOut() {
    if (!hiredOutIsEmpty()) {
      return _hiredOut.last;
    } else {
      return Tool('assets/imagePlaceholder.png', "", "", "", "", "", "", false);
    }
  }

  Tool getFirstHired() {
    if (!hiredIsEmpty()) {
      return _hired.first;
    } else {
      return Tool('assets/imagePlaceholder.png', "", "", "", "", "", "", false);
    }
  }

  Tool getLastHired() {
    if (!hiredIsEmpty()) {
      return _hired.first;
    } else {
      return Tool('assets/imagePlaceholder.png', "", "", "", "", "", "", false);
    }
  }

  List<Tool> getHiredOut() {
    if (!hiredOutIsEmpty()) {
      return _hiredOut;
    } else {
      _hiredOut.add(
          Tool('assets/imagePlaceholder.png', "", "", "", "", "", "", false));
      return _hiredOut;
    }
  }

  List<Tool> getHired() {
    if (!hiredIsEmpty()) {
      return _hired;
    } else {
      _hired.add(
          Tool('assets/imagePlaceholder.png', "", "", "", "", "", "", false));
      return _hired;
    }
  }*/
}
