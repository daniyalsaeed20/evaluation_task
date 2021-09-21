import 'package:evalutaion_task/global/colors.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint_0 = new Paint()
      ..color = Color.fromARGB(144, 0, 0, 0)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;
    paint_0.shader = ui.Gradient.radial(
        Offset(size.width * 0.50, size.height * 0.40), size.width * 0.73, [
      Color(0xff000000),
      Color(0xff000000),
      Color(0xff000000),
      Color(0xff000000),
      Color(0xffffffff)
    ], [
      0.00,
      0.31,
      0.52,
      0.75,
      1.00
    ]);

    Path path_0 = Path();
    path_0.moveTo(0, 0);
    path_0.lineTo(size.width, 0);
    path_0.lineTo(size.width, size.height * 0.2020000);
    path_0.lineTo(size.width * 0.1404125, size.height * 0.8035000);
    path_0.lineTo(size.width * 0.1304125, size.height * 0.8073600);
    path_0.lineTo(size.width * 0.1219375, size.height * 0.7993600);
    path_0.lineTo(size.width * 0.1144375, size.height * 0.7811000);
    path_0.lineTo(0, size.height * 0.3982200);
    path_0.lineTo(0, 0);

    canvas.drawPath(path_0, paint_0);

    Paint paint_1 = new Paint()
      ..color = themeColor
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path_1 = Path();
    path_1.moveTo(0, 0);
    path_1.lineTo(size.width, 0);
    path_1.lineTo(size.width, size.height * 0.1928800);
    path_1.lineTo(size.width * 0.1359750, size.height * 0.8005800);
    path_1.lineTo(size.width * 0.1286125, size.height * 0.8002000);
    path_1.lineTo(size.width * 0.1212500, size.height * 0.7851000);
    path_1.lineTo(size.width * 0.0901625, size.height * 0.6924400);
    path_1.lineTo(0, size.height * 0.3913200);
    path_1.lineTo(0, size.height * 0.2589200);

    canvas.drawPath(path_1, paint_1);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
