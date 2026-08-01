import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_app/home.dart';
import 'package:my_app/module11/class_1.dart';

import 'module11/Class_3.dart';
import 'module11/Grid.dart';
import 'module11/class_2.dart';
import 'module11/hotel_ui.dart';
import 'module_10/class3.dart';
import 'module_10/class_1.dart';
import 'module_10/class_2.dart';
import 'module_12/navi/class_2.dart';
import 'module_12/navi/page1.dart';
import 'module_12/navi/page2.dart';
import 'module_12/navi/page3.dart';
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
            routes: {
              '/page1':(context)=>page1(),
              '/page2':(context)=>page2(name: '',),
              '/page3':(context)=>page3(),
              '/Module12Class3':(context)=>Module12Class3(),
            },
            initialRoute: '/Module12Class3',
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
      // home: page1(),
    );},
    );
  }
}
