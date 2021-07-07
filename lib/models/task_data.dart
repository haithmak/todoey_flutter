import 'dart:collection';

import 'package:todoey_flutter/models/task.dart';
import 'package:flutter/foundation.dart';

class TaskData extends ChangeNotifier{
  List<Task> _taskList = [
    Task(name: 'buy milk'),
    Task(name: 'buy eggs'),
    Task(name: 'buy juice'),
  ];

  UnmodifiableListView<Task> get taskList {
    return UnmodifiableListView(_taskList) ;
}

  int get tasksCount {
    return _taskList.length ;
  }

  void addTask(String tasktitle){
    final newTask = Task(name: tasktitle ) ;
    _taskList.add(newTask) ;
    notifyListeners();
  }

  void updateTask(Task task)  {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task){
    _taskList.remove(task) ;
    notifyListeners();
  }


}