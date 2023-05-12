import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:tasks/components/task/new/date_form_field.dart';
import 'package:tasks/components/task/new/string_form_field.dart';
import 'package:tasks/models/view/task_box.dart';
import 'package:tasks/sys/config/constants.dart';
import 'package:tasks/sys/config/theme.dart';

import '../models/data/task.dart';

class NewTaskScreen extends StatefulWidget {
  const NewTaskScreen({super.key});
  @override
  State<NewTaskScreen> createState() => _NewTaskScreenState();
}

class _NewTaskScreenState extends State<NewTaskScreen> {
  final formKey = GlobalKey<FormState>();

  String title = '';
  String subTitle = '';
  DateTime? deadline;

  void changeTitleHandler(String value) => title = value;
  void changeSubTitleHandler(String value) => subTitle = value;
  void changeDeadlineHandler(DateTime? value) => deadline = value;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(ConstCfg.textNewTaskAppbarTitle),
        actions: [
          TextButton(
            onPressed: () {
              if (title.isNotEmpty) {
                context.read<TaskBoxViewModel>().add(
                  Task(title: title, subTitle: subTitle, deadline: deadline),
                );
                context.pop();
              }
            },
            child: Text(
              ConstCfg.textSave,
              style: TextStyle(color: ThemeCfg.colorOnPrimary),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(ConstCfg.sizeLarge),
        child: ListView(
          children: [
            StringFormField(
              valueKey: 0,
              prefixIcon: ConstCfg.iconMenuOpen,
              labelText: ConstCfg.textNewTaskTitleHint,
              changeActionHandler: changeTitleHandler
            ),
            ConstCfg.gapHeightNormal,
            StringFormField(
              valueKey: 1,
              prefixIcon: ConstCfg.iconEditNote,
              labelText: ConstCfg.textNewTaskSubTitleHint,
              changeActionHandler: changeSubTitleHandler
            ),
            ConstCfg.gapHeightNormal,
            DateFormField(
              valueKey: 2,
              prefixIcon: ConstCfg.iconCalendarMonth,
              suffixIcon: ConstCfg.iconClose,
              labelText: ConstCfg.textNewTaskDeadlineHint,
              changeActionHandler: changeDeadlineHandler
            ),
          ],
        ),
      ),
    );
  }
}
