import 'package:flutter/material.dart';
import 'khadija_1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Lab 2',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const CustomDesign(),
      debugShowCheckedModeBanner: false,
    );
  }
}
