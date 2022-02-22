import 'dart:collection';

import 'package:wo_sind_app/database/tool.dart';

class Database {
  static final Database _instance = Database._internal();
  factory Database() => _instance;

  Database._internal() {
    _topTools[id++] = new Tool("assets/driver.jpg", "Akkuschrauber",
        "Akkuschrauber", "abc", "Bosch", "Ingolstadt", "5", false, "Obi");
    _topTools[id++] = new Tool("assets/Betonmischer.jpeg", "Betonmischer",
        "Betonmischer", "abc", "Bosch", "Train", "25", false, "Bauhaus");
    _topTools[id++] = new Tool("assets/drill2.jpg", "Bohrer", "Bohrer", "abc",
        "Bosch", "Preith", "10", false, "Hagebau");
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

    _hiredOut.forEach((key, value) {
      list.add(value);
    });

    return list;
  }

  List<Tool> getHiredValues() {
    List<Tool> list = [];

    _hired.forEach((key, value) {
      list.add(value);
    });

    return list;
  }

  List<Tool> getTopValues() {
    List<Tool> list = [];

    _topTools.forEach((key, value) {
      list.add(value);
    });

    return list;
  }

  List<Tool> getAllValues() {
    List<Tool> list = [];

    _allTools.forEach((key, value) {
      list.add(value);
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

  List<Tool> getHiredOutByTool(String tool) {
    List<Tool> tools = [];
    _hiredOut.forEach((key, value) {
      if (value.getTool() == tool) {
        tools.add(value);
      }
    });
    return tools;
  }

  List<Tool> getHiredOutByBrand(String brand) {
    List<Tool> tools = [];
    _hiredOut.forEach((key, value) {
      if (value.getBrand() == brand) {
        tools.add(value);
      }
    });
    return tools;
  }

  List<Tool> getHiredOutByLocation(String location) {
    List<Tool> tools = [];
    _hiredOut.forEach((key, value) {
      if (value.getLocation() == location) {
        tools.add(value);
      }
    });
    return tools;
  }

  List<Tool> getHiredOutByAuthor(String author) {
    List<Tool> tools = [];
    _hiredOut.forEach((key, value) {
      if (value.getAuthor() == author) {
        tools.add(value);
      }
    });
    return tools;
  }

  List<Tool> getHiredByTool(String tool) {
    List<Tool> tools = [];
    _hired.forEach((key, value) {
      if (value.getTool() == tool) {
        tools.add(value);
      }
    });
    return tools;
  }

  List<Tool> getHiredByBrand(String brand) {
    List<Tool> tools = [];
    _hired.forEach((key, value) {
      if (value.getBrand() == brand) {
        tools.add(value);
      }
    });
    return tools;
  }

  List<Tool> getHiredByLocation(String location) {
    List<Tool> tools = [];
    _hired.forEach((key, value) {
      if (value.getLocation() == location) {
        tools.add(value);
      }
    });
    return tools;
  }

  List<Tool> getHiredByAuthor(String author) {
    List<Tool> tools = [];
    _hired.forEach((key, value) {
      if (value.getAuthor() == author) {
        tools.add(value);
      }
    });
    return tools;
  }
}
