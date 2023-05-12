import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tasks/sys/config/constants.dart';
import 'package:tasks/sys/config/theme.dart';
import 'package:tasks/sys/utils/datetime.dart';

import '../../../models/data/task.dart';

class TaskTileDateComponent extends StatelessWidget {
  final bool _isActive;
  const TaskTileDateComponent({
    super.key,
    required bool isActive,
  }) : _isActive = isActive;

  @override
  Widget build(BuildContext context) {
    final Task task = context.watch<Task>();
    return (task.deadline == null && task.completedAt == null)
      ? const SizedBox.shrink()
      : Padding(
          padding: ConstCfg.edgeTileSubContents,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                dateToString(task.deadline),
                style: ThemeCfg.styleTileLabel(task.isCompleted, _isActive),
                maxLines: 1,
              ),
              Text(
                dateToString(task.completedAt),
                style: ThemeCfg.styleTileLabel(task.isCompleted, _isActive),
                maxLines: 1,
              )
            ],
          ),
        );
  }
}
