import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todayey/models/task_data.dart';
import 'package:todayey/screens/task_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (_) => TaskData(),
        child: MaterialApp(
          home: TaskScreen(),
        ));
  }
}
