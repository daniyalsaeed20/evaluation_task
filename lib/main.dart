import 'package:evalutaion_task/global/colors.dart';
import 'package:evalutaion_task/views/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void main() async {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Evaluation Task',
      theme: ThemeData(
        primarySwatch: convertToMaterialColor(0xFFFFFFFF),
      ),
      home: landingPage(),
    );
  }
}

landingPage() {
  return ScreenUtilInit(
    designSize: Size(
      720,
      1600,
    ),
    builder: () => HomePage(),
  );
}
