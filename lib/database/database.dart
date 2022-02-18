import 'package:wo_sind_app/database/tool.dart';

class Database {
  static final Database _instance = Database._internal();
  factory Database() => _instance;

  Database._internal() {
    // init things inside this
  }

  // Methods, variables ...
  List<Tool> _hiredOut = [];
  List<Tool> _hired = [];

  void fillToolInHiredOut(Tool tool) {
    if (!hiredOutIsEmpty()) {
      if (_hiredOut.first.img == 'assets/imagePlaceholder.png') {
        _hiredOut.removeLast();
      }
    }
    _hiredOut.add(tool);
  }

  void fillToolsInHiredOut(List<Tool> tools) {
    _hiredOut.addAll(tools);
  }

  void fillToolInHired(Tool tool) {
    _hired.add(tool);
  }

  void fillToolsInHired(List<Tool> tools) {
    _hired.addAll(tools);
  }

  bool hiredOutIsEmpty() {
    return _hiredOut.isEmpty;
  }

  bool hiredIsEmpty() {
    return _hired.isEmpty;
  }

  Tool getFirstHiredOut() {
    if (!hiredOutIsEmpty()) {
      return _hiredOut.first;
    } else {
      return Tool(
          0, 'assets/imagePlaceholder.png', "", "", "", "", "", "", false);
    }
  }

  Tool getLastHiredOut() {
    if (!hiredOutIsEmpty()) {
      return _hiredOut.last;
    } else {
      return Tool(
          0, 'assets/imagePlaceholder.png', "", "", "", "", "", "", false);
    }
  }

  Tool getFirstHired() {
    if (!hiredIsEmpty()) {
      return _hired.first;
    } else {
      return Tool(
          0, 'assets/imagePlaceholder.png', "", "", "", "", "", "", false);
    }
  }

  Tool getLastHired() {
    if (!hiredIsEmpty()) {
      return _hired.first;
    } else {
      return Tool(
          0, 'assets/imagePlaceholder.png', "", "", "", "", "", "", false);
    }
  }

  List<Tool> getHiredOut() {
    if (!hiredOutIsEmpty()) {
      return _hiredOut;
    } else {
      _hiredOut.add(Tool(
          0, 'assets/imagePlaceholder.png', "", "", "", "", "", "", false));
      return _hiredOut;
    }
  }

  List<Tool> getHired() {
    if (!hiredIsEmpty()) {
      return _hired;
    } else {
      _hired.add(Tool(
          0, 'assets/imagePlaceholder.png', "", "", "", "", "", "", false));
      return _hired;
    }
  }
}
