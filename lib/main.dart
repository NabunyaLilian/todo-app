import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/base_screen.dart';
import 'package:todo_app/theme/theme.dart';
import 'package:todo_app/theme/theme_provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => ThemeProvider(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TODO',
      darkTheme: darkTheme,
      theme: lightTheme,
      themeMode: themeProvider.themeMode,
      home: const BaseScreen(),
    );
  }
}
