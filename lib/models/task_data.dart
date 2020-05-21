import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'task.dart';
class TaskData extends ChangeNotifier{
  List<Task> _tasks = [];
  int get taskCount{
    return _tasks.length;
  }
  UnmodifiableListView<Task> get tasks{
    return UnmodifiableListView(_tasks);

  }
  void updateTask(String value){
    _tasks.add(Task(name: value));
    notifyListeners();
  }
  void upTask(Task task){
    task.toggleDone();
    notifyListeners();
  }
  void deleteTask(Task task){
    _tasks.remove(task);
    notifyListeners();
  }
}