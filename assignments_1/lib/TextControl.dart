import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {
  final VoidCallback changeText;

  TextControl(this.changeText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.tryParse('50'),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      margin: const EdgeInsets.symmetric(vertical: 100),
      child: ElevatedButton(
        onPressed: changeText,
        style: const ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(Colors.orange),
          foregroundColor: MaterialStatePropertyAll(Colors.white),
        ),
        child: const Text('Change Text'),
      ),
    );
  }
}
