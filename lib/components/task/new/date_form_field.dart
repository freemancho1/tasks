import 'package:flutter/material.dart';

import '../../../sys/utils/datetime.dart';

class DateFormField extends StatefulWidget {
  final int valueKey;
  final IconData prefixIcon;
  final IconData suffixIcon;
  final String labelText;
  final void Function(DateTime?) changeActionHandler;
  const DateFormField({
    super.key,
    required this.valueKey,
    required this.prefixIcon,
    required this.suffixIcon,
    required this.labelText,
    required this.changeActionHandler,
  });

  @override
  State<DateFormField> createState() => _DateFormFieldState();
}

class _DateFormFieldState extends State<DateFormField> {
  final textController = TextEditingController();

  bool get isShowSuffixIcon => textController.text.isNotEmpty;
  DateTime? currentDate;

  void changeDate(DateTime? value) {
    setState(() {
      textController.text = dateToString(value);
      currentDate = value;
    });
    widget.changeActionHandler(value);
  }

  @override
  Widget build(BuildContext context) => TextFormField(
    key: ValueKey(widget.valueKey),
    controller: textController,
    maxLines: 1,
    readOnly: true,
    decoration: InputDecoration(
      prefixIcon: Icon(widget.prefixIcon),
      labelText: widget.labelText,
      suffixIcon: (isShowSuffixIcon)
        ? IconButton(
            onPressed: () {
              setState(() {
                textController.text = '';
                currentDate = DateTime.now();
              });
              widget.changeActionHandler(null);
              /// 포커스를 일어야, 정상적으로 hint가 보임.
              FocusScope.of(context).unfocus();
            },
            icon: Icon(widget.suffixIcon),
          )
        : null,
    ),
    onTap: () => selectDateWidget(
      context: context,
      initialDate: currentDate,
      changeAction: changeDate
    ),
  );
}
