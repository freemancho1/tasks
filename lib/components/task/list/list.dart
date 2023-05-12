import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tasks/models/view/task_box.dart';

import '../../../models/data/task.dart';
import 'tile.dart';

class TaskListComponent extends StatelessWidget {
  const TaskListComponent({super.key,});

  @override
  Widget build(BuildContext context) {
    final List<Task> tasks = context.watch<TaskBoxViewModel>().tasks;
    return ListView.builder(
      itemCount: tasks.length,
      itemBuilder: (context, index) {
        final task = tasks[index];
        return ChangeNotifierProvider.value(
          value: task,
          child: const TaskTileComponent(),
        );
      },
    );
  }
}
