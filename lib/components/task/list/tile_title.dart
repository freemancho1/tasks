import 'package:flutter/material.dart';
import 'package:tasks/components/task/list/tile_title_actions.dart';
import 'package:tasks/components/task/list/tile_title_leading.dart';
import 'package:tasks/sys/config/theme.dart';

import '../../../models/data/task.dart';
import '../../../sys/config/constants.dart';

class TaskTileTitleComponent extends StatelessWidget {
  final Task _task;
  final bool _isActive;
  const TaskTileTitleComponent({
    super.key,
    required Task task,
    required bool isActive,
  }) : _task = task,
       _isActive = isActive;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: ConstCfg.sizeNormal),
      child: Row(
        children: [
          TaskTileTitleLeadingComponent(isActive: _isActive),
          ConstCfg.gapWidthNormal,
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                top: ConstCfg.sizeNormal,
                bottom: ConstCfg.sizeNormal,
              ),
              child: Text(
                _task.title,
                style: ThemeCfg.styleTileTitle(_task.isCompleted, _isActive),
                maxLines: 1,
              ),
            )
          ),
          if (_isActive)
            TaskTileTitleActionsComponent(task: _task)
        ],
      ),
    );
  }
}
