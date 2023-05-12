import 'package:flutter/material.dart';
import 'package:tasks/sys/config/constants.dart';
import 'package:tasks/sys/config/theme.dart';

import '../../../models/data/task.dart';

class TaskTileSubtitleComponent extends StatelessWidget {
  final Task _task;
  final bool _isActive;
  const TaskTileSubtitleComponent({
    super.key,
    required Task task,
    required bool isActive,
  }) : _task = task,
       _isActive = isActive;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: ConstCfg.edgeTileSubContents,
      child: Text(
        _task.subTitle,
        style: ThemeCfg.styleTileSubTitle(_task.isCompleted, _isActive),
        maxLines: null,
      ),
    );
  }
}
