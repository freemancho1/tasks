import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tasks/sys/config/constants.dart';
import 'package:tasks/sys/config/theme.dart';

import '../../../models/data/task.dart';

class TaskTileSubtitleComponent extends StatelessWidget {
  final bool _isActive;
  const TaskTileSubtitleComponent({
    super.key,
    required bool isActive,
  }) : _isActive = isActive;

  @override
  Widget build(BuildContext context) {
    final Task task = context.watch<Task>();
    return Padding(
      padding: ConstCfg.edgeTileSubContents,
      child: Text(
        task.subTitle,
        style: ThemeCfg.styleTileSubTitle(task.isCompleted, _isActive),
        maxLines: null,
      ),
    );
  }
}
