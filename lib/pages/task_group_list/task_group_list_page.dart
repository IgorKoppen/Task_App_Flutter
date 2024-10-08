import 'package:flutter/material.dart';
import 'package:todo_app/pages/task_group_list/widgets/task_group_item.dart';

class TaskGroupListPage extends StatelessWidget {
  const TaskGroupListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Task Groups'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.light_mode),
          ),
        ],
      ),
      body: const Text("Error to connect!"),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
