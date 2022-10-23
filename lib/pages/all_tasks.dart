import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_app/provider/todo_provider.dart';
import 'package:to_do_app/widgets/task_widget.dart';

class AllTasksScreen extends StatelessWidget {
  const AllTasksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: Provider.of<TodoProvider>(context).allTasks.length,
        itemBuilder: (context, index) {
          return TaskWidget(Provider.of<TodoProvider>(context).allTasks[index]);
        });
  }
}
