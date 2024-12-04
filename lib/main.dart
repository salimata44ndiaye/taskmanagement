import 'package:flutter/material.dart';
import 'task_list.dart';
import 'task_form.dart';
import 'task_details.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: TaskListPage(),  // Page d'accueil
      routes: {
        '/taskForm': (context) => TaskFormPage(),
        '/taskDetails': (context) => TaskDetailsPage(task: {}),
      },
    );
  }
}
