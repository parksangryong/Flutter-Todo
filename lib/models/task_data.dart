import 'package:flutter/material.dart';
import 'package:todayey/models/task.dart';

class TaskData with ChangeNotifier{
  final List<Task> _tasks = [
    Task(name: 'Buy Milk'),
    Task(name: 'Buy Apple'),
    Task(name: 'Buy Pen'),
  ];

  List<Task> get tasks => _tasks;

  int get TaskCount => _tasks.length;

  void addTask(String taskTitle){
    _tasks.add(Task(name: taskTitle));
    notifyListeners();
  }

  void updateTask(Task task){
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task){
    _tasks.remove(task);
    notifyListeners();
  }
}