import 'package:evalutaion_task/controller/message_controller.dart';
import 'package:evalutaion_task/global/colors.dart';
import 'package:evalutaion_task/views/cards/custom_container.dart';
import 'package:evalutaion_task/views/widgets/custom_text.dart';
import 'package:evalutaion_task/views/widgets/custom_text_field.dart';
import 'package:evalutaion_task/views/widgets/text_bubble.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ScreenTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: themeColor,
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        shadowColor: themeColor,
        elevation: 0,
        automaticallyImplyLeading: true,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20.w),
            child: InkWell(
              onTap: () {},
              child: Icon(
                Icons.menu,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
      body: Stack(
        children: [
          GetBuilder<MessageController>(
              init: MessageController(),
              builder: (messageController) {
                return Container(
                  height: Get.height,
                  width: Get.width,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          height: Get.height - 336.h,
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                for (int i = 0;
                                    i < messageController.messages.length;
                                    i++)
                                  showMessage(
                                    messageController.messages[i],
                                  ),
                                for (int i = 0;
                                    i < messageController.messages.length;
                                    i++)
                                  showMessage(
                                    messageController.messages[i],
                                  ),
                              ],
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                top: 16.h,
                                bottom: 32.h,
                              ),
                              child: customTextField(
                                text: 'Write a reply...',
                                controller:
                                    messageController.sendMessageController,
                              ),
                            ),
                            Icon(
                              Icons.emoji_emotions_outlined,
                              color: Colors.grey[300],
                            ),
                            Icon(
                              Icons.image,
                              color: Colors.grey[300],
                            ),
                            Icon(
                              Icons.attach_file,
                              color: Colors.grey[300],
                            ),
                            InkWell(
                              onTap: () {
                                messageController.chatTemp();
                              },
                              child: Icon(
                                Icons.send,
                                color: themeColor,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              }),
          CustomPaint(
            size: Size(
              Get.width,
              (Get.width * 0.625).toDouble(),
            ), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
            painter: RPSCustomPainter(),
          ),
          Positioned(
            left: 48.w,
            child: Container(
              height: 100.h,
              width: 100.w,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(
                  90,
                ),
              ),
              child: Icon(
                Icons.messenger_sharp,
                color: themeColor,
              ),
            ),
          ),
          Positioned(
            top: 110.h,
            left: 48.w,
            child: customText(
              text: "Hi There",
              textColor: Colors.white,
            ),
          ),
          Positioned(
            top: 170.h,
            left: 48.w,
            child: customText(
              align: TextAlign.left,
              text: "Welcome to online service.\nHow can we help you today?",
              textColor: Colors.white,
              fontSize: 12.0,
            ),
          ),
        ],
      ),
    );
  }
}
