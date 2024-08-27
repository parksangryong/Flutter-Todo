import 'package:flutter/material.dart';
import 'package:todayey/components/tasks_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      TasksTile(check: false, onPress: () {}, title: 'title'),
      TasksTile(check: false, onPress: () {}, title: 'title'),
      TasksTile(check: false, onPress: () {}, title: 'title')
    ]);
  }
}

