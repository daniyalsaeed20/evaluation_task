import 'package:evalutaion_task/views/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget calenderCard({
  color = Colors.black,
  day = "...",
  date = "...",
  label = "...",
}) {
  return Container(
    height: 150.h,
    width: 150.w,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
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
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 75.h,
          width: 150.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
            color: color,
          ),
          child: Center(
            child: customText(
              text: day,
              fontSize: 40.sp,
              textColor: color == Colors.white ? Colors.black : Colors.white,
            ),
          ),
        ),
        customText(
          text: date,
          fontSize: 20.sp,
        ),
        Padding(
          padding: EdgeInsets.only(
            bottom: 8.h,
          ),
          child: customText(
            text: label,
            fontSize: 20.sp,
          ),
        )
      ],
    ),
  );
}
