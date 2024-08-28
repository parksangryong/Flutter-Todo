import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todayey/components/tasks_tile.dart';
import 'package:todayey/models/task_data.dart';

class TasksList extends StatefulWidget {
  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, taskData, child) {
      return ListView.builder(
          itemCount: taskData.tasks.length,
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TasksTile(
              taskTitle: task.name,
              isChecked: task.isDone,
              checkboxCallback: (checkboxState) {
                taskData.updateTask(task);
              },
              deleteTile: () {
                taskData.deleteTask(task);
              },
            );
          });
    });
  }
}
