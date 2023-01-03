
import 'package:clay/screens/web/home.dart';
import 'package:clay/utils/color_palette.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Clay',
      theme: ThemeData(primarySwatch: Palette.primary, fontFamily: 'Halenoir'),
      home: const HomePage(),
    );
  }
}
