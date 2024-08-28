import 'package:flutter/material.dart';
import 'package:todayey/components/tasks_tile.dart';

import '../models/task.dart';

class TasksList extends StatefulWidget {
  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(name: 'Buy Milk'),
    Task(name: 'Buy Apple'),
    Task(name: 'Buy Pen'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          return TasksTile(
            taskTitle: tasks[index].name,
            isChecked: tasks[index].isDone,
            checkboxCallback: (checkboxState){
              setState(() {
                tasks[index].toggleDone();
              });
            },
          );
        });
  }
}
