import 'package:animation_daily_task/view/HomePage.dart';
import 'package:animation_daily_task/view/ecommars/ecommars.dart';
import 'package:animation_daily_task/view/speead_of_earth.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SpeedOfRotation(),
    );
  }
}

