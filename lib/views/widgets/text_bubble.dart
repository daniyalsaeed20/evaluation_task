import 'package:evalutaion_task/global/colors.dart';
import 'package:evalutaion_task/model/message_model.dart';
import 'package:evalutaion_task/views/widgets/custom_text.dart';
import 'package:flutter/material.dart';

Widget textBubble({
  color = Colors.grey,
  text = "",
  textColor,
}) {
  return Container(
    // width: 500.w,
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.5),
          blurRadius: 5,
          spreadRadius: 3,
          offset: Offset(0, 3),
        )
      ],
      borderRadius: BorderRadius.circular(
        10,
      ),
      color: color,
    ),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: customText(
        align: TextAlign.left,
        text: text,
        textColor: textColor,
        // fontSize: 30.sp,
      ),
    ),
  );
}

Widget showMessage(
  MessageModel messageModel,
) {
  return Align(
    alignment: messageModel.type == "Reciever"
        ? Alignment.centerRight
        : Alignment.centerLeft,
    child: Padding(
      padding: EdgeInsets.only(
        bottom: 16,
        left: messageModel.type == "Reciever" ? 48 : 16,
        right: messageModel.type == "Reciever" ? 16 : 48,
        top: 8,
      ),
      child: textBubble(
        color: messageModel.type == "Reciever" ? themeColor : Colors.white,
        text: messageModel.message,
        textColor:
            messageModel.type == "Reciever" ? Colors.white : Colors.black,
      ),
    ),
  );
}
