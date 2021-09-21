import 'package:evalutaion_task/views/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget customButton({
  text = "...",
  textColor = Colors.white,
  buttonColor = Colors.grey,
  fontSize = 16.0,
  fontWeight = FontWeight.bold,
  function,
}) {
  return InkWell(
    onTap: function,
    child: Row(
      children: [
        Expanded(
          child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 3,
                    offset: Offset(0, 2),
                  ),
                ],
                borderRadius: BorderRadius.circular(
                  5,
                ),
                color: buttonColor,
              ),
              height: 100.h,
              child: Center(
                child: customText(
                  text: text,
                  textColor: textColor,
                  fontSize: fontSize,
                  fontWeight: fontWeight,
                ),
              )),
        ),
      ],
    ),
  );
}
