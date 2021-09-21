import 'package:evalutaion_task/global/colors.dart';
import 'package:evalutaion_task/views/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget packageCard({
  imageName = "assets/images/demo_image.png",
  price = "10",
  heading = "...",
}) {
  return Container(
    height: 240.h,
    width: Get.width,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(
        10,
      ),
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.5),
          blurRadius: 5,
          spreadRadius: 3,
          offset: Offset(0, 3),
        ),
      ],
    ),
    child: Row(
      children: [
        Container(
          height: 230.h,
          width: 230.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              10,
            ),
            color: themeColor,
            image: DecorationImage(
              image: AssetImage(
                imageName,
              ),
              fit: BoxFit.fill,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.5),
                blurRadius: 3,
                spreadRadius: 1,
                offset: Offset(0, 3),
              ),
            ],
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 8.w,
              ),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: 8.w,
                    ),
                    child: Container(
                      width: 280.w,
                      child: customText(
                        align: TextAlign.left,
                        text: heading,
                        textColor: themeColor,
                        fontSize: 24.sp,
                      ),
                    ),
                  ),
                  Container(
                    width: 100.w,
                    child: customText(
                      text: "(\$$price)",
                      fontSize: 24.sp,
                      textColor: themeColor,
                    ),
                  )
                ],
              ),
            ),
            Row(
              children: [
                customText(
                  text: "You will get \$10 buy this package",
                  textColor: themeColor,
                  fontSize: 22.sp,
                  align: TextAlign.left,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 2.w,
                  ),
                  child: microCard(
                    text: "Wash",
                    imageName: imageName,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: microCard(
                    text: "Drycleaning",
                    imageName: imageName,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: microCard(
                    text: "Iron",
                    imageName: imageName,
                  ),
                ),
              ],
            )
          ],
        ),
      ],
    ),
  );
}

Widget microCard({
  imageName = "assets/images/demo_image.png",
  text = "...",
}) {
  return Column(
    children: [
      Container(
        height: 80.h,
        width: 80.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            10,
          ),
          color: themeColor,
          image: DecorationImage(
            image: AssetImage(
              imageName,
            ),
            fit: BoxFit.fill,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5),
              blurRadius: 3,
              spreadRadius: 1,
              offset: Offset(0, 1),
            ),
          ],
        ),
      ),
      Padding(
        padding: EdgeInsets.only(
          top: 8.h,
        ),
        child: customText(
          text: text,
          textColor: themeColor,
          fontSize: 18.sp,
        ),
      ),
    ],
  );
}
