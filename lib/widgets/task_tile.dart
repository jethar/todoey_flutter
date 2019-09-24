import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text("This is a task."),
      trailing: new TaskCheckbox(isChecked),
    );
  }
}

class TaskCheckbox extends StatelessWidget {
  final bool checkboxState;

  TaskCheckbox(this.checkboxState);

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: checkboxState,
      activeColor: Colors.lightBlueAccent,
      onChanged: (newValue) {
//        setState(() {
//          isChecked = newValue;
//        });
      },
    );
  }
}
