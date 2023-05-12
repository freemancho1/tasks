import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tasks/components/task/list/tile_title_actions.dart';
import 'package:tasks/components/task/list/tile_title_leading.dart';
import 'package:tasks/sys/config/theme.dart';

import '../../../models/data/task.dart';
import '../../../sys/config/constants.dart';

class TaskTileTitleComponent extends StatelessWidget {
  final bool _isActive;
  const TaskTileTitleComponent({
    super.key,
    required bool isActive,
  }) : _isActive = isActive;

  @override
  Widget build(BuildContext context) {
    final Task task = context.watch<Task>();
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
                task.title,
                style: ThemeCfg.styleTileTitle(task.isCompleted, _isActive),
                maxLines: 1,
              ),
            )
          ),
          if (_isActive)
            const TaskTileTitleActionsComponent(),
        ],
      ),
    );
  }
}
