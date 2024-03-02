import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:practice10/HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(411.428,890.286),
        minTextAdapt: true,
        splitScreenMode: true,
        builder:(_ , child){
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: HomePage(),
          );
      }
    );
  }
}
