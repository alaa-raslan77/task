import 'package:flutter/material.dart';
import 'package:task_one/screen_one/screen_one.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home:ScreenOne()
    );
  }
}