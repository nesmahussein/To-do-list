import 'package:flutter/material.dart';
import 'package:todo_app/models/task.dart';

class TaskData extends ChangeNotifier{
  List<Task> Tasks = [
    Task(name: 'go shopping'),
    Task(name: 'go to cinema'),
    Task(name: 'make a task'),
  ];

  void AddTask(String newTaskTitle){
    Tasks.add(Task(name: newTaskTitle));
    notifyListeners();

  }
  void updateTask(Task task){
    task.doneChange();
    notifyListeners();
  }
  void deleteTask(Task task){
    Tasks.remove(task);
    notifyListeners();
  }
}