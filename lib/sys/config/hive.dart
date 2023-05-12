import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart' as path_provider;
import 'package:tasks/models/data/task.dart';

import 'logger.dart';

class HiveCfg {
  static const tableNameTasks = 'tasks';
  static const tableIdTasks = 1;
}

Future<void> hiveInit() async {
  final appDocumentDir =
    await path_provider.getApplicationDocumentsDirectory();
  appLog.fine('HiveDir:     path[${appDocumentDir.path}]');
  appLog.fine('HiveDir:      uri[${appDocumentDir.uri}]');
  appLog.fine('HiveDir: absolute[${appDocumentDir.absolute}]');

  /// 하이브 초기화
  await Hive.initFlutter(appDocumentDir.path);

  /// 아답터 등록
  Hive.registerAdapter(TaskAdapter());

  /// 하이브 박스(테이블) 불러오기
  await Hive.openBox<Task>(HiveCfg.tableNameTasks);
}