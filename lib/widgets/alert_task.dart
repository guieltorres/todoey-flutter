import 'package:flutter/material.dart';

class AlertTask extends StatelessWidget {
  final VoidCallback? onPress;

  const AlertTask({
    Key? key,
    this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      title: const Text("Delete"),
      content: const Text("Are you ready to say goodbye to this task?"),
      alignment: Alignment.center,
      actions: <Widget>[
        TextButton(
          onPressed: () => Navigator.pop(context, 'Cancel'),
          child: const Text("Cancel"),
        ),
        TextButton(
          onPressed: onPress ?? () => Navigator.pop(context, 'Ok'),
          child: const Text("Ok"),
        ),
      ],
    );
  }
}
