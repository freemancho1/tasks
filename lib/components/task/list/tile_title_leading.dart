import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tasks/models/data/task.dart';

import '../../../sys/config/theme.dart';

class TaskTileTitleLeadingComponent extends StatelessWidget {
  final bool _isActive;
  const TaskTileTitleLeadingComponent({
    super.key,
    required bool isActive,
  }) : _isActive = isActive;

  @override
  Widget build(BuildContext context) {
    final task = context.watch<Task>();
    return InkResponse(
      onTap: () => task.toggleCompleted(),
      child: Icon(
        task.isCompleted
          ? Icons.check_circle_outline
          : Icons.circle_outlined,
        size: ThemeCfg.sizeTitle,
        color: ThemeCfg.colorTileLeading(task.isCompleted, _isActive),
      ),
    );
  }
}
