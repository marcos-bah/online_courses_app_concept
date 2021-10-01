import 'package:flutter/material.dart';

class RRectAngShapePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..strokeWidth = 5
      ..style = PaintingStyle.fill
      ..color = Colors.white38
      ..blendMode = BlendMode.softLight;

    canvas.rotate(1.32);
    canvas.drawRRect(
        RRect.fromRectAndRadius(
          Rect.fromCenter(
            center: const Offset(140, -110),
            width: 100,
            height: 80,
          ),
          const Radius.circular(10),
        ),
        paint);

    canvas.rotate(-0.15);
    canvas.drawRRect(
        RRect.fromRectAndRadius(
          Rect.fromCenter(
            center: const Offset(175, -70),
            width: 100,
            height: 80,
          ),
          const Radius.circular(10),
        ),
        paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
