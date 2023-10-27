import 'package:flutter/material.dart';
import 'package:todo_app/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  const TasksList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.only(
        top: 12,
        left: 16,
        right: 16,
      ),
      children: [
        TaskTile(),
        TaskTile(),
        TaskTile(),
      ],
    );
  }
}
