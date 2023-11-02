import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  final Function addTaskCallback;

  const AddTaskScreen({super.key, required this.addTaskCallback});

  @override
  Widget build(BuildContext context) {
    final newTaskController = TextEditingController();
    late String newTaskTitle;

    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Container(
        color: const Color(0xff757575),
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                "Add Task",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.lightBlueAccent,
                  fontSize: 28,
                ),
              ),
              TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                controller: newTaskController,
                onChanged: (value) {
                  newTaskTitle = value;
                },
                decoration: const InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.lightBlueAccent, width: 2),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              MaterialButton(
                onPressed: () => {
                  addTaskCallback(newTaskTitle),
                  newTaskController.clear(),
                },
                padding: const EdgeInsets.symmetric(vertical: 12),
                color: Colors.lightBlueAccent,
                child: const Text(
                  "Add",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
