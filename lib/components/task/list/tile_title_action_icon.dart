import 'package:flutter/material.dart';
import 'package:tasks/sys/config/constants.dart';
import 'package:tasks/sys/config/theme.dart';

class TaskTileTitleActionIcon extends StatelessWidget {
  final IconData? icon;
  final bool padLeft;
  final bool padRight;
  final void Function() onTapActionHandler;
  const TaskTileTitleActionIcon(
    this.icon, {
      super.key,
      this.padLeft = false,
      this.padRight = false,
      required this.onTapActionHandler
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: padLeft ? ConstCfg.sizeNormal : 0.0,
        right: padRight ? ConstCfg.sizeNormal : 0.0,
      ),
      alignment: Alignment.center,
      child: InkResponse(
        onTap: onTapActionHandler,
        child: Icon(
          icon,
          size: ConstCfg.sizeActionIcon,
          color: ThemeCfg.colorOnPrimary,
        ),
      ),
    );
  }
}
