import 'package:flutter/material.dart';

class TasksTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function(bool?) checkboxCallback;
  final VoidCallback deleteTile;

  TasksTile(
      {super.key,
      required this.taskTitle,
      required this.isChecked,
      required this.checkboxCallback,
      required this.deleteTile});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        onLongPress: deleteTile,
        title: Text(taskTitle,
            style: TextStyle(
                decoration: isChecked ? TextDecoration.lineThrough : null)),
        trailing: Checkbox(value: isChecked, onChanged: checkboxCallback));
  }
}
