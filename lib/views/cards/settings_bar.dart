import 'package:evalutaion_task/views/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

Widget settingsBar({
  text = "...",
  isSwitch = false,
  value = false,
  controller,
  widget,
}) {
  return Container(
    height: 75.h,
    width: Get.width,
    decoration: BoxDecoration(
      color: Colors.white,
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
    ),
    child: Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 18.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          customText(
            text: text,
          ),
          isSwitch == true
              ? widget
              : Icon(
                  Icons.keyboard_arrow_down,
                ),
        ],
      ),
    ),
  );
}
