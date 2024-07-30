import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/task_provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final taskProvider = Provider.of<TaskProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Tempo Tasks'),
      ),
      body: ListView.builder(
        itemCount: taskProvider.tasks.length,
        itemBuilder: (context, index) {
          final task = taskProvider.tasks[index];
          return ListTile(
            title: Text(task.name),
            subtitle: Text(task.category),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // ajt une tache/ a faire
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
