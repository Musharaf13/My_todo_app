import 'package:flutter/cupertino.dart';
import 'TasksList.dart';

class Data extends ChangeNotifier {
  String name;
  List<Task> tasksList = [
    Task(name: '4 Breads'),
    Task(name: '3 eggs'),
    Task(name: '5 Milk Packs')
  ];
  addTask(String name) {
    tasksList.add(Task(name: name));
    notifyListeners();
  }
  updateTask(Task task) {
    task.toggleState();
    notifyListeners();
  }
  removeTask(Task task) {
    tasksList.remove(task);
    notifyListeners();
  }
}
