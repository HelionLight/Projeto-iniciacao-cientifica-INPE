import 'package:flutter/material.dart';
import 'homepage.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Web Page',
      home: MyHomePage(), // Excluded aluno parameter

    );
  }
}
