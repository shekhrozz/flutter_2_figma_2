

//import 'package:flutter/material.dart';
//import 'package:flutter_screenutil/flutter_screenutil.dart';
//import 'dart:ui' as ui show Gradient;

//class MyPainter extends CustomPainter {
  //@override
  //void paint(Canvas canvas, Size size) {
   // Paint myPaint = Paint()
     // ..strokeWidth = 3.w
      //..style = PaintingStyle.stroke
      //..shader = ui.Gradient.linear(const Offset(0, 0), const Offset(1, 1), [
       // const Color(0xFFA60F93),
        //const Color(0xFFD91A46),
      //]);

    //canvas.drawCircle(Offset(27.w, 27.w), 31.w, myPaint);
  //}

  //@override
  //bool shouldRepaint(MyPainter oldDelegate) {
   // return false;
  //}
//}
import 'package:flutter/material.dart';
 import 'dart:ui' as ui show Gradient;
class MyPainter extends CustomPainter { 
  void paint(Canvas canvas,Size size){
    Paint myPaint=Paint()
    .. strokeWidth=3
    ..style=PaintingStyle.stroke
    ..shader=ui.Gradient.linear(Offset(3, 1,), Offset(1,3),
    
    [
      const Color(0xFFFBBE47),
    //  const Color(0xFFA60F93),
        const Color(0xFFD91A46),
    ]);
    canvas.drawCircle(Offset(27,27), 31, myPaint);
  }
  @override
  bool shouldRepaint( CustomPainter oldDelegate) {
    return false;
  }
  
}