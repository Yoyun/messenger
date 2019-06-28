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
//    canvas.drawRect(Rect.fromLTWH(0, 0, size.width, size.height), bg1Paint);

    Path path = Path();
//    canvas.drawCircle(Offset(0,size.height), 20, bg1Paint);
//    canvas.drawCircle(Offset(0,size.height/3), 20, bg1Paint);
    path.lineTo(0, size.height);
    path.lineTo(0, 103);

//    canvas.drawCircle(Offset(size.width/5,size.height/5), 20, bg1Paint);
//    canvas.drawCircle(Offset(size.width/5*2,size.height/5*2), 20, bg1Paint);
//    path.cubicTo(77, 31, 96, 43, 169, 92);
    path.quadraticBezierTo(77, 31, 96, 43);
    path.quadraticBezierTo(96, 43, 169, 92);

//    canvas.drawCircle(Offset(size.width/5*3,size.height/5), 20, bg1Paint);
//    canvas.drawCircle(Offset(size.width/5*4,size.height/5*2), 20, bg1Paint);
//    path.cubicTo(200, 17, 282, 99, 300, 120);
//    path.cubicTo(389, 0, 480, -28, 423, -10);

//    canvas.drawCircle(Offset(size.width,size.height/3), 20, bg1Paint);
//    canvas.drawCircle(Offset(size.width,size.height), 20, bg1Paint);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);

    canvas.drawPath(path, bg1Paint);

//    Path path = Path();
//    path.lineTo(0, size.height);
//    path.lineTo(0, size.height /3);
//
//    // 设置第一个曲线的样式
//    var firstEndPont = Offset(size.width /3, size.height /3);
//    var firstControlPoint = Offset(size.width/3*2, size.height/3*2);
//
//    // 把设置好的第一个样式添加到路径里面
//    path.quadraticBezierTo(
//        firstControlPoint.dx, firstControlPoint.dy, firstEndPont.dx, firstEndPont.dy);
//
////    // 设置第二个曲线的样式
////    var secondConttrolPoint = Offset(size.width / 4 * 3, size.height - 70);
////    var secondEndpoint = Offset(size.width, size.height - 40);
////
////    // 把第二个设置好的样式添加到路径里面
////    path.quadraticBezierTo(
////        secondConttrolPoint.dx, secondConttrolPoint.dy, secondEndpoint.dx, secondEndpoint.dy);
//
//    path.lineTo(size.width, size.height/3*2);
//    path.lineTo(size.width, size.height);
//
//    canvas.drawPath(path, bg1Paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
