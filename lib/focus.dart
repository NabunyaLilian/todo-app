import 'package:flutter/material.dart';

class FocusScreen extends StatefulWidget {
  const FocusScreen({super.key});

  @override
  State<FocusScreen> createState() => _FocusState();
}

class _FocusState extends State<FocusScreen> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Focus'),
    );
  }
}
