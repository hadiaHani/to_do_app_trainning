import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_app/provider/todo_provider.dart';
import 'package:to_do_app/widgets/task_widget.dart';

class CompleteTasksScreen extends StatelessWidget {
  const CompleteTasksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: Provider.of<TodoProvider>(context)
            .allTasks
            .where((element) => element.isComplete)
            .length,
        itemBuilder: (context, index) {
          return TaskWidget(Provider.of<TodoProvider>(context)
              .allTasks
              .where((element) => element.isComplete)
              .toList()[index]);
        });
  }
}
