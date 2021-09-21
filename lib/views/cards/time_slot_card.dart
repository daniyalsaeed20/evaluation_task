import 'package:evalutaion_task/views/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget timeSlotCard({
  color = Colors.white,
  time = "...",
  function,
}) {
  return InkWell(
    onTap: function,
    child: Container(
      height: 75.h,
      width: 150.w,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            blurRadius: 5,
            spreadRadius: 3,
            offset: Offset(0, 3),
          ),
        ],
        borderRadius: BorderRadius.circular(
          10,
        ),
        color: color,
      ),
      child: Center(
        child: customText(
          text: time,
          fontSize: 20.sp,
          textColor: color == Colors.white ? Colors.black : Colors.white,
        ),
      ),
    ),
  );
}
