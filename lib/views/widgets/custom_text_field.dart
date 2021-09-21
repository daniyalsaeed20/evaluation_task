import 'package:evalutaion_task/global/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget customTextField({
  text = '...',
  controller,
  String Function(String) validator,
  keyboardType = TextInputType.text,
  obscureText = false,
}) {
  return Material(
    child: Container(
      height: 100.h,
      width: Get.width - 250.w,
      decoration: BoxDecoration(
        // color: Colors.tealAccent,
        borderRadius: BorderRadius.circular(5),
        // border: Border.all(
        //   width: 1.w,
        //   color: Color(0xFF5B9313),
        // ),
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
      child: Center(
        child: TextFormField(
          cursorColor: themeColor,
          obscureText: obscureText,
          keyboardType: keyboardType,
          validator: validator,
          controller: controller,
          style: TextStyle(
            fontSize: 36.sp,
            // color: white,
          ),
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(
              vertical: 16.h,
              horizontal: 20.w,
            ),
            hintStyle: TextStyle(
              fontSize: 36.sp,
              color: Colors.grey,
            ),
            hintText: text,
            border: InputBorder.none,
          ),
        ),
      ),
    ),
  );
}
