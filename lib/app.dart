import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_app/home.dart';
import 'package:my_app/module11/class_1.dart';

import 'module11/Grid.dart';
import 'module_10/class3.dart';
import 'module_10/class_1.dart';
import 'module_10/class_2.dart';
import 'module_9/class_3.dart';
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        // Use builder only if you need to use library outside ScreenUtilInit context
        builder: (_ , child) {
          return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.orange,
        primarySwatch: Colors.orange,
        appBarTheme: AppBarThemeData(
          backgroundColor: Colors.red,
          foregroundColor: Colors.white,
          centerTitle: true,
        ),
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
      home: GridV(),
    );},
    );
  }
}
