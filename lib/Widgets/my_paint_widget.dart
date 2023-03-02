import 'dart:math';

import 'package:flutter/material.dart';

class MyPaintWidget extends CustomPainter{

  final List<Color> colors;
  final List<double> stops;

  MyPaintWidget({required this.colors, required this.stops});
  @override
  void paint(Canvas canvas, Size size) {

    const Gradient gradient = LinearGradient(
        colors: [
          Color(0xff79d3fc),
          Color(0xff8782ea),
          Color(0xffe3aead),
          Color(0xff5b6dfb),
          Color(0xfffeba8d),
        ],
      stops: [
        0.3,
        0.5,
        0.7,
        0.9,
        1.0,
      ]
    );
    var centerHeight = size.height / 2;
    var centerWidth = size.width / 2;

    Rect rect = Rect.fromCenter(center: Offset(centerHeight, centerWidth), width: size.width, height: size.height);

    final Paint paint = Paint()
      ..shader = gradient.createShader(rect)
      ..strokeWidth = 8
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;


    var startAngle = 3.5 * pi;
    var sweepAngle = 280 * pi/180;

    canvas.drawArc(rect, startAngle, sweepAngle, false, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }

}