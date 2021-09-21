import 'package:evalutaion_task/global/colors.dart';
import 'package:evalutaion_task/views/screens/screen_one.dart';
import 'package:evalutaion_task/views/screens/screen_three.dart';
import 'package:evalutaion_task/views/screens/screen_two.dart';
import 'package:evalutaion_task/views/widgets/custom_button.dart';
import 'package:evalutaion_task/views/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: themeColor,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: customText(
          text: "Task O",
          fontWeight: FontWeight.bold,
          textColor: themeColor,
          fontSize: 32.sp,
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20.w),
            child: InkWell(
              onTap: () {},
              child: Icon(
                Icons.menu,
                color: themeColor,
              ),
            ),
          )
        ],
      ),
      body: Container(
        height: Get.height,
        width: Get.width,
        child: Column(
          children: [
            Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 32,
              ),
              child: customButton(
                buttonColor: themeColor,
                text: "Button One",
                fontSize: 32.sp,
                function: () {
                  Get.to(
                    () => ScreenOne(),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 32,
              ),
              child: customButton(
                buttonColor: themeColor,
                text: "Button Two",
                fontSize: 32.sp,
                function: () {
                  Get.to(
                    () => ScreenTwo(),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 32,
              ),
              child: customButton(
                buttonColor: themeColor,
                text: "Button Three",
                fontSize: 32.sp,
                function: () {
                  Get.to(
                    () => ScreenThree(),
                  );
                },
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
