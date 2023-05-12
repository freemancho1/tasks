import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tasks/components/task/list/tile_title_action_icon.dart';
import 'package:tasks/models/view/task_box.dart';
import 'package:tasks/sys/config/theme.dart';

import '../../../models/data/task.dart';
import '../../../sys/config/constants.dart';

class TaskTileTitleActionsComponent extends StatelessWidget {
  const TaskTileTitleActionsComponent({super.key,});

  @override
  Widget build(BuildContext context) {
    final Task task = context.watch<Task>();
    return Container(
      height: ConstCfg.sizeActionIconContainerHeight,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(ConstCfg.sizeActionIconContainerRadius),
        ),
        color: ThemeCfg.colorPrimary,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TaskTileTitleActionIcon(
            ConstCfg.iconAdd,
            padLeft: true, padRight: true,
            onTapActionHandler: () {}
          ),
          TaskTileTitleActionIcon(
            ConstCfg.iconDelete,
            padRight: true,
            onTapActionHandler: () =>
              context.read<TaskBoxViewModel>().remove(task),
          ),
        ],
      ),
    );
  }
}
