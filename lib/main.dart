import 'package:flutter/material.dart';
import 'Widget/college_section_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'College ERP',
      home: const CollegeSelectionScreen(),
    );
  }
}