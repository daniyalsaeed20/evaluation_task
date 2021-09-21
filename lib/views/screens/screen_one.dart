import 'package:evalutaion_task/controller/pickup_controller.dart';
import 'package:evalutaion_task/global/colors.dart';
import 'package:evalutaion_task/views/cards/calender_card.dart';
import 'package:evalutaion_task/views/cards/settings_bar.dart';
import 'package:evalutaion_task/views/cards/time_slot_card.dart';
import 'package:evalutaion_task/views/widgets/custom_button.dart';
import 'package:evalutaion_task/views/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ScreenOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back,
          color: themeColor,
        ),
        shadowColor: themeColor,
        automaticallyImplyLeading: true,
        centerTitle: true,
        title: customText(
          text: "Pickup Date",
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
      body: GetBuilder<PickupController>(
          init: PickupController(),
          builder: (pickupController) {
            return Container(
              height: Get.height,
              width: Get.width,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: 50.w,
                        ),
                        customText(
                          text: "When would you like your pickup?",
                          fontSize: 28.sp,
                        ),
                        Icon(
                          Icons.calendar_today_outlined,
                          color: themeColor,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        calenderCard(
                          color: Colors.grey,
                          date: "25 June",
                          day: "Fri",
                          label: "Yesterday",
                        ),
                        calenderCard(
                          color: themeColor,
                          date: "26 June",
                          day: "Sat",
                          label: "Today",
                        ),
                        calenderCard(
                          color: Colors.white,
                          date: "27 June",
                          day: "Sun",
                          label: "Tommorow",
                        ),
                        calenderCard(
                          color: Colors.red,
                          date: "28 June",
                          day: "Mon",
                          label: "BlockDay",
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        customText(
                          text: "Available Time slots",
                          fontSize: 28.sp,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Wrap(
                      alignment: WrapAlignment.start,
                      runSpacing: 50.h,
                      spacing: 50.w,
                      // alignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        for (int i = 0; i < pickupController.times.length; i++)
                          timeSlotCard(
                              time: pickupController.times[i],
                              color: pickupController.selectedTab == i
                                  ? themeColor
                                  : Colors.white,
                              function: () {
                                pickupController.selectedTab = i;
                                pickupController.update();
                              }),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 48.w,
                      right: 48.w,
                      bottom: 48.h,
                      top: 48.h,
                    ),
                    child: settingsBar(
                        value: pickupController.switchController,
                        controller: pickupController,
                        isSwitch: true,
                        widget: Switch(
                          onChanged: pickupController.toggleSwitch,
                          value: pickupController.isSwitched,
                          activeColor: Colors.white,
                          activeTrackColor: themeColor,
                        ),
                        text: "Repeat Pickup"),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 96.w,
                      bottom: 16.h,
                    ),
                    child: Row(
                      children: [
                        customText(
                          text: "How Often Repeat?",
                          fontSize: 26.sp,
                          textColor: Colors.grey,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 48.w,
                      right: 48.w,
                      bottom: 48.h,
                    ),
                    child: settingsBar(
                        value: pickupController.switchController,
                        controller: pickupController,
                        // widget: Switch(
                        //   onChanged: pickupController.toggleSwitch,
                        //   value: pickupController.isSwitched,
                        //   activeColor: Colors.white,
                        //   activeTrackColor: themeColor,
                        // ),
                        text: "Every week"),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 96.w,
                      bottom: 16.h,
                    ),
                    child: Row(
                      children: [
                        customText(
                          text: "How Many times?",
                          fontSize: 26.sp,
                          textColor: Colors.grey,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 48.w,
                      right: 48.w,
                      bottom: 48.h,
                    ),
                    child: settingsBar(
                      value: pickupController.switchController,
                      controller: pickupController,
                      // widget: Switch(
                      //   onChanged: pickupController.toggleSwitch,
                      //   value: pickupController.isSwitched,
                      //   activeColor: Colors.white,
                      //   activeTrackColor: themeColor,
                      // ),
                      text: "1",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: customButton(
                      buttonColor: themeColor,
                      text: "Continue",
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
