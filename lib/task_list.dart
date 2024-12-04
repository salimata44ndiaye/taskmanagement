
import 'package:flutter/material.dart';
import 'task_form.dart';
import 'task_details.dart';

class TaskListPage extends StatelessWidget {
  final List<Map<String, String>> tasks = [
    {
      'title': 'Task 1',
      'description': 'Description of Task 1',
    },
    {
      'title': 'Task 2',
      'description': 'Description of Task 2',
    },
    // Ajoute d'autres tâches si nécessaire
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Liste des Tâches'),
      ),
      body: ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(tasks[index]['title']!),
            subtitle: Text(tasks[index]['description']!),
            onTap: () {
              // Navigation vers la page des détails de la tâche
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TaskDetailsPage(task: tasks[index]),
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigation vers la page de formulaire pour ajouter une nouvelle tâche
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => TaskFormPage()),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}


