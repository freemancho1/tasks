import 'package:flutter/material.dart';
import 'package:tasks/components/task/list/tile_date.dart';
import 'package:tasks/components/task/list/tile_subtitle.dart';
import 'package:tasks/components/task/list/tile_title.dart';
import 'package:tasks/sys/config/theme.dart';

import '../../../models/data/task.dart';
import '../../../sys/config/constants.dart';

class TaskTileComponent extends StatefulWidget {
  final Task task;
  const TaskTileComponent({super.key, required this.task});

  @override
  State<TaskTileComponent> createState() => _TaskTileComponentState();
}

class _TaskTileComponentState extends State<TaskTileComponent> {
  bool isActive = false;
  final FocusNode focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: ThemeCfg.borderTile(isActive),
      ),
      margin: EdgeInsets.only(
        left: widget.task.depth * ConstCfg.sizeDoubleLarge
      ),
      child: InkResponse(
        onTap: () => focusNode.requestFocus(),
        /// 아래 두줄의 코드를 이용해 탭 클릭 이벤트를 표시 안되게 함
        /// 색상을 없에는 방법으로 처리함.
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
        focusNode: focusNode,
        onFocusChange: (isFocused) =>
          setState(() => isActive = isFocused),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TaskTileTitleComponent(task: widget.task, isActive: isActive),
            if (isActive)
              TaskTileSubtitleComponent(task: widget.task, isActive: isActive),
            TaskTileDateComponent(task: widget.task, isActive: isActive)
          ],
        ),
      ),
    );
  }
}

