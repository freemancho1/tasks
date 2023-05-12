import 'package:flutter/material.dart';

import 'config/hive.dart';
import 'config/logger.dart';
import 'config/window.dart';

Future<void> sysInit() async {
  WidgetsFlutterBinding.ensureInitialized();
  loggerInit();
  setupWindow();
  await hiveInit();
}