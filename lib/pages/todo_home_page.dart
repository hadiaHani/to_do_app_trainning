import 'package:flutter/material.dart';
import 'package:to_do_app/pages/all_tasks.dart';
import 'package:to_do_app/pages/complete_tasks.dart';
import 'package:to_do_app/pages/incomplete_tasks.dart';

class TodoHomePage extends StatefulWidget {
  const TodoHomePage({Key? key}) : super(key: key);

  @override
  State<TodoHomePage> createState() => _TodoHomePageState();
}

class _TodoHomePageState extends State<TodoHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Todo App'),
            bottom: const TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.list),
                ),
                Tab(
                  icon: Icon(Icons.done),
                ),
                Tab(
                  icon: Icon(Icons.cancel),
                ),
              ],
            ),
          ),
          body: const TabBarView(children: [
            AllTasksScreen(),
            CompleteTasksScreen(),
            InCompleteTasksScreen()
          ]),
        ));
  }
}
