import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../config/logger.dart';

String dateToString(DateTime? value) =>
    value == null ? '': DateFormat('yyyy-MM-dd').format(value);

Future<void> selectDateWidget({
  required BuildContext context,
  DateTime? initialDate,
  required void Function(DateTime) changeAction,
}) async {
  final selectedDate = await showDatePicker(
    context: context,
    initialDate: initialDate ?? DateTime.now(),
    firstDate: DateTime(1990),
    lastDate: DateTime(2100),
    locale: const Locale('ko', 'KR'),
  );
  appLog.info('New Data: ${selectedDate.toString()}');
  if (selectedDate != null) {
    changeAction(selectedDate);
  }
}