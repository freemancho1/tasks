import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:window_size/window_size.dart';

import 'constants.dart';

void setupWindow() {
  /// 웹을 제외한 데스크톱 운영체제일 경우 수행하는 것으로
  if (!kIsWeb && (Platform.isWindows || Platform.isLinux || Platform.isMacOS)) {
    setWindowTitle('Provider Demo');
    setWindowMinSize(ConstCfg.windowSize);
    setWindowMaxSize(ConstCfg.windowSize);
    getCurrentScreen().then((screen) {
      setWindowFrame(Rect.fromCenter(
        center: screen!.frame.center,
        width: ConstCfg.windowSize.width,
        height: ConstCfg.windowSize.height,
      ));
    });
  }
}