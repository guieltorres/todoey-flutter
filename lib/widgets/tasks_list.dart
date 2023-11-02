import 'package:flutter/material.dart';
import 'package:todo_app/widgets/task_tile.dart';

import '../models/task.dart';

class TasksList extends StatefulWidget {
  final List<Task> tasks;

  const TasksList({super.key, required this.tasks});

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.only(
        top: 12,
        left: 16,
        right: 16,
      ),
      itemBuilder: (context, index) {
        return TaskTile(
          isChecked: widget.tasks[index].isDone,
          taskTitle: widget.tasks[index].name,
          checkboxCallback: (bool? checkboxState) {
            setState(() {
              widget.tasks[index].toggleDone();
            });
          },
        );
      },
      itemCount: widget.tasks.length,
    );
  }
}
