import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_app/pages/todo_home_page.dart';
import 'package:to_do_app/provider/todo_provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider<TodoProvider>(
        create: (context) {
          return TodoProvider();
        },
        child: MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData.light(),
            home: const TodoHomePage())),
  );
}
