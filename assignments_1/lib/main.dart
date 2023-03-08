import 'package:flutter/material.dart';

import './TextControl.dart';
import './TargetText.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _appTitleText = 'Change Text';

  final _buttonText = const [
    'First',
    'Second',
    'Third',
  ];

  var _textIndex = 0;

  void _changeText() {
    super.setState(() {
      _textIndex += 1;
      if (_textIndex == _buttonText.length) {
        _textIndex = 0;
      }
    });
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(_appTitleText),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TargetText(
              mainText: _buttonText,
              textIdx: _textIndex,
            ),
            TextControl(_changeText),
          ],
        ),
      ),
    );
  }
}
