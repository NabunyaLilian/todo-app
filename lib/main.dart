import 'package:flutter/material.dart';
import 'package:todo_app/theme/theme.dart';

import 'home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TODO',
      darkTheme: darkTheme,
      theme: lightTheme,
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
