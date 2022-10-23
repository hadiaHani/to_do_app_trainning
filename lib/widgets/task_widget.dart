import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_app/models/task_model.dart';
import 'package:to_do_app/provider/todo_provider.dart';

class TaskWidget extends StatelessWidget {
  Task task;
  TaskWidget(this.task, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      secondary: IconButton(
          onPressed: () {
            Provider.of<TodoProvider>(context, listen: false).deleteTask(task);
          },
          icon: const Icon(Icons.delete)),
      value: task.isComplete,
      onChanged: (v) {
        Provider.of<TodoProvider>(context, listen: false).updateTask(task);
      },
      title: Text(task.title),
    );
  }
}
