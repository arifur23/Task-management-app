import 'package:flutter/material.dart';
import 'package:task_management_app/Screens/intro_sccreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: IntroScreen(),
    );
  }
}
