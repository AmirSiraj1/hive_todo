import 'package:hive/hive.dart';

class TodoDatabase {
  // list of todo tasks
  List todoList = [];
  // refrence box
  final _myBox = Hive.box('myBox');

  // when the app opens for the first time
  void createInitalData() {
    todoList = [
      ["make tt", false],
      ["make hdg", true],
    ];
  }

  // load data
  void loadData() {
    todoList = _myBox.get("TODOLIST");
  }

  // update data
  void updateData() {
    _myBox.put("TODOLIST", todoList);
  }
}
