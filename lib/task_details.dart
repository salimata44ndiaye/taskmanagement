
import 'package:flutter/material.dart';

class TaskDetailsPage extends StatelessWidget {
  final Map<String, String> task;

  TaskDetailsPage({required this.task});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Détails de la tâche'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Titre: ${task['title']}', style: TextStyle(fontSize: 18)),
            SizedBox(height: 8),
            Text('Description: ${task['description']}', style: TextStyle(fontSize: 16)),
            SizedBox(height: 8),
            Text('Date de début: ${task['startDate']}', style: TextStyle(fontSize: 16)),
            SizedBox(height: 8),
            Text('Date de fin: ${task['endDate']}', style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
