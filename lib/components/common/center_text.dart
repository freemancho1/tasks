import 'package:flutter/material.dart';

class CenterTextComponent extends StatelessWidget {
  final String message;
  final TextStyle? style;
  const CenterTextComponent({
    super.key,
    required this.message,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(
      message,
      style: style,
      textAlign: TextAlign.center,
    ),);
  }
}
