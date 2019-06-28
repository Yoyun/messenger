import 'package:flutter/material.dart';

class MessageHeaderWidget extends CustomPainter {
  final Color bgColor;
  final Color bg1Color;
  final Color bg2Color;
  Paint bgPaint;
  Paint bg1Paint;
  Paint bg2Paint;

  MessageHeaderWidget(this.bgColor, this.bg1Color, this.bg2Color) {
    bgPaint = Paint()
      ..color = bgColor
      ..style = PaintingStyle.fill;
    bg1Paint = Paint()
      ..color = bg1Color
      ..style = PaintingStyle.fill;
    bg2Paint = Paint()
      ..color = bg2Color
      ..style = PaintingStyle.fill;
  }

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawRect(Rect.fromLTWH(0, 0, size.width, size.height), bgPaint);

    var path1 = Path();
    path1.moveTo(0, size.height);
    path1.lineTo(
      size.width * (-54 / 414),
      size.height * (175 / 225),
    );
    path1.quadraticBezierTo(
      size.width * (56 / 414),
      17,
      size.width * (96 / 414),
      size.height * (43 / 225),
    );
    path1.cubicTo(
      size.width * (170 / 414),
      size.height * (92 / 225),
      size.width * (200 / 414),
      size.height * (17 / 225),
      size.width * (282 / 414),
      size.height * (99 / 225),
    );
    path1.cubicTo(
      size.width * (303 / 414),
      size.height * (120 / 225),
      size.width * (389 / 414),
      size.height * (0 / 225),
      size.width * (423 / 414),
      size.height * (-10 / 225),
    );
    path1.lineTo(size.width, size.height);

    canvas.drawPath(path1, bg1Paint);

    var path2 = Path();
    path2.moveTo(0, size.height);
    path2.lineTo(
      size.width * (-54 / 414),
      size.height * (175 / 225),
    );
    path2.quadraticBezierTo(
      size.width * (-13 / 414),
      size.height * (199 / 225),
      size.width * (53 / 414),
      size.height * (99 / 225),
    );
    path2.cubicTo(
      size.width * (120 / 414),
      size.height * (0 / 225),
      size.width * (84 / 414),
      size.height * (157 / 225),
      size.width * (221 / 414),
      size.height * (157 / 225),
    );
    path2.cubicTo(
      size.width * (241 / 414),
      size.height * (157 / 225),
      size.width * (312 / 414),
      size.height * (105 / 225),
      size.width * (361 / 414),
      size.height * (105 / 225),
    );
    path2.cubicTo(
      size.width * (416 / 414),
      size.height * (105 / 225),
      size.width * (392 / 414),
      size.height * (18 / 225),
      size.width * (423 / 414),
      size.height * (-10 / 225),
    );
    path2.lineTo(size.width, size.height);

    canvas.drawPath(path2, bg2Paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
