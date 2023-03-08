import 'package:flutter/material.dart';

class TargetText extends StatelessWidget {
  final List<String> mainText;
  final int textIdx;

  TargetText({
    required this.mainText,
    required this.textIdx,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      mainText[textIdx],
      style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
    );
  }
}
