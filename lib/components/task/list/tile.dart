import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tasks/components/task/list/tile_date.dart';
import 'package:tasks/components/task/list/tile_subtitle.dart';
import 'package:tasks/components/task/list/tile_title.dart';
import 'package:tasks/sys/config/theme.dart';

import '../../../models/data/task.dart';
import '../../../sys/config/constants.dart';

class TaskTileComponent extends StatefulWidget {
  const TaskTileComponent({super.key});
  @override
  State<TaskTileComponent> createState() => _TaskTileComponentState();
}

class _TaskTileComponentState extends State<TaskTileComponent> {
  bool isActive = false;
  final FocusNode focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    final task = context.watch<Task>();
    return Container(
      // decoration: BoxDecoration(
      //   border: ThemeCfg.borderTile(isActive),
      // ),
      margin: EdgeInsets.only(
        left: task.depth * ConstCfg.sizeDoubleLarge
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
            TaskTileTitleComponent(isActive: isActive),
            if (isActive)
              TaskTileSubtitleComponent(isActive: isActive),
            TaskTileDateComponent(isActive: isActive)
          ],
        ),
      ),
    );
  }
}

