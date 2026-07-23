import 'package:flutter/material.dart';
import 'package:my_app/home.dart';

import 'module_10/class3.dart';
import 'module_10/class_1.dart';
import 'module_10/class_2.dart';
import 'module_9/class_3.dart';
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.orange,
        primarySwatch: Colors.orange,
        scaffoldBackgroundColor: Colors.blue.shade100,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50)
            )
          )
        )
      ),
      debugShowCheckedModeBanner: false,
      title: 'Flutter 15',
      home: Class2(),
    );
  }
}
