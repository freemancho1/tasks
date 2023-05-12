import 'package:flutter/foundation.dart';
import 'package:logging/logging.dart';

import 'constants.dart';

final Logger appLog = Logger(ConstCfg.loggerName);

void loggerInit() {
  Logger.root.level =
    kReleaseMode ? ConstCfg.releaseLogLevel : ConstCfg.debugLogLevel;
  Logger.root.onRecord.listen((event) {
    debugPrint(
      /// 아래 두개는 LogCat에서 중복되기 때문에 주석 처리
      // '${event.level.name}: '
      // '${event.time}: '
      '${event.loggerName}: '
      '${event.message}'
    );
  });
}