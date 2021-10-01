import 'package:flutter/material.dart';

class PizzaShapePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Colors.white38
      ..strokeWidth = 5
      ..blendMode = BlendMode.softLight
      ..style = PaintingStyle.fill
      ..strokeCap = StrokeCap.round;

    canvas.rotate(0.1);
    canvas.drawCircle(const Offset(10, 140), 100, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
