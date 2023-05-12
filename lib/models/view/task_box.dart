import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../sys/config/hive.dart';
import '../data/task.dart';

class TaskBoxViewModel extends ChangeNotifier {

  final Box<Task> _taskBox = Hive.box<Task>(HiveCfg.tableNameTasks);

  void add(Task task) => _add(task);
  Future<void> _add(Task task) async {
    await _taskBox.add(task);
    notifyListeners();
  }

  void remove(Task task) => _remove(task);
  Future<void> _remove(Task task) async {
    /// 별도의 key를 선언하지 않아도 HiveObject에서 key를 생성해 사용함
    await _taskBox.deleteAt(task.key);
    notifyListeners();
  }

  List<Task> get tasks => _taskBox.values.toList().cast<Task>();

}