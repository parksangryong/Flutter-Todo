import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todayey/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  late String newTaskTitle = "";

  AddTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 20, right: 45, left: 45),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Add Task',
              style: TextStyle(fontSize: 30, color: Colors.lightBlueAccent),
              textAlign: TextAlign.center,
            ),
            TextField(
              autofocus: true,
              onChanged: (newValue) {
                newTaskTitle = newValue;
              },
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
              decoration: const InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.lightBlueAccent, width: 2))),
            ),
            const SizedBox(
              height: 20,
            ),
            MaterialButton(
              height: 45,
              color: Colors.lightBlueAccent,
              onPressed: () {
                final task = newTaskTitle == ""
                    ?  "내용 없음"
                    : newTaskTitle;
                context.read<TaskData>().addTask(task);
                Navigator.pop(context);
              },
              child: const Text(
                "Add",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
