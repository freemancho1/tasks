import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../sys/config/hive.dart';
// import '../../sys/config/logger.dart';

part 'task.g.dart';

@HiveType(typeId: HiveCfg.tableIdTasks)
class Task extends HiveObject with ChangeNotifier {

  @HiveField(0)
  String title;

  @HiveField(1)
  String subTitle;

  @HiveField(2)
  DateTime? deadline;

  @HiveField(3)
  bool isCompleted;

  @HiveField(4)
  DateTime? completedAt;

  @HiveField(5)
  int depth;

  @HiveField(6)
  List<Task> tasks;

  Task({
    required this.title,
    this.subTitle = '',
    this.deadline,
    this.isCompleted = false,
    this.completedAt,
    this.depth = 0,
    this.tasks = const [],
  });

  void toggleCompleted() {
    isCompleted = !isCompleted;
    completedAt = isCompleted ? DateTime.now() : null;
    save();
    // appLog.fine(toString());
    notifyListeners();
  }

  @override
  String toString() {
    return 'Task('
      'title: $title, '
      'depth: $depth, '
      'isCompleted: $isCompleted, '
      'completedAt: $completedAt, '
      'tasks length: ${tasks.length}'
      ')';
  }

}