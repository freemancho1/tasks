import 'package:flutter/material.dart';
import 'package:tasks/sys/config/constants.dart';
import 'package:tasks/sys/config/theme.dart';
import 'package:tasks/sys/utils/datetime.dart';

import '../../../models/data/task.dart';

class TaskTileDateComponent extends StatelessWidget {
  final Task _task;
  final bool _isActive;
  const TaskTileDateComponent({
    super.key,
    required Task task,
    required bool isActive,
  }) : _task = task,
       _isActive = isActive;

  @override
  Widget build(BuildContext context) {
    return (_task.deadline == null && _task.completedAt == null)
      ? const SizedBox.shrink()
      : Padding(
          padding: ConstCfg.edgeTileSubContents,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                dateToString(_task.deadline),
                style: ThemeCfg.styleTileLabel(_task.isCompleted, _isActive),
                maxLines: 1,
              ),
              Text(
                dateToString(_task.completedAt),
                style: ThemeCfg.styleTileLabel(_task.isCompleted, _isActive),
                maxLines: 1,
              )
            ],
          ),
        );
  }
}
