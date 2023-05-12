import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../components/task/list/list.dart';
import '../components/common/center_text.dart';
import '../models/view/task_box.dart';
import '../models/data/task.dart';
import '../sys/config/constants.dart';
import '../sys/config/theme.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Task> tasks = context.watch<TaskBoxViewModel>().tasks;

    return Scaffold(
      appBar: AppBar(
        title: const Text(ConstCfg.textTasksAppbarTitle),
      ),
      body: tasks.isEmpty
        ? CenterTextComponent(
            message: ConstCfg.textTasksNothing,
            style: ThemeCfg.styleEmptyList,
          )
        : const Padding(
            padding: ConstCfg.edgeLargeTLR,
            child: TaskListComponent(),
          ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.go('/${ConstCfg.routeNew}'),
        child: const Icon(ConstCfg.iconAdd),
      ),
    );
  }
}
