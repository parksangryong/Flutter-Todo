import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
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
            const TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
              decoration: InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.lightBlueAccent, width: 2))),
            ),
            const SizedBox(
              height: 20,
            ),
            MaterialButton(
              height: 45,
              onPressed: () {},
              color: Colors.lightBlueAccent,
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
