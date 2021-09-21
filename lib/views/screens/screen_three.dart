import 'package:evalutaion_task/controller/package_controller.dart';
import 'package:evalutaion_task/global/colors.dart';
import 'package:evalutaion_task/views/cards/package_card.dart';
import 'package:evalutaion_task/views/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ScreenThree extends StatelessWidget {
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
          text: "Package",
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
      body: GetBuilder<PackageController>(
          init: PackageController(),
          builder: (packageController) {
            return Container(
              height: Get.height,
              width: Get.width,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      for (int i = 0;
                          i < packageController.packages.length;
                          i++)
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: packageCard(
                            heading: packageController.packages[i].heading,
                            price: packageController.packages[i].price,
                          ),
                        ),

                      /* -------------------------- showing scrollability ------------------------- */

                      for (int i = 0;
                          i < packageController.packages.length;
                          i++)
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: packageCard(
                            imageName: packageController.packages[i].imageName,
                            heading: packageController.packages[i].heading,
                            price: packageController.packages[i].price,
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
