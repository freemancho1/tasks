import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../models/data/task.dart';
import 'tile.dart';

class TaskListComponent extends StatelessWidget {
  final List<Task> tasks;
  const TaskListComponent({
    super.key,
    required this.tasks,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tasks.length,
      itemBuilder: (context, index) {
        final task = tasks[index];
        return ChangeNotifierProvider.value(
          value: task,
          child: TaskTileComponent(task: task,),
        );
      },
    );
  }
}
