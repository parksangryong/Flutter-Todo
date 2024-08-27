import 'package:flutter/material.dart';

class TasksTile extends StatefulWidget {
  final VoidCallback onPress;
  final String title;
  bool check;

  TasksTile({
    super.key,
    required this.check,
    required this.onPress,
    required this.title,
  });

  @override
  _TasksTileState createState() => _TasksTileState();
}

class _TasksTileState extends State<TasksTile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: widget.onPress,
      title: Text(
        widget.title,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.w500,
        ).copyWith(
          decoration: widget.check ? TextDecoration.lineThrough : TextDecoration.none,)
      ),
      trailing: Checkbox(
        value: widget.check,
        onChanged: (value) {
          setState(() {
            widget.check = value!;
          });
        },
      ),
    );
  }
}
