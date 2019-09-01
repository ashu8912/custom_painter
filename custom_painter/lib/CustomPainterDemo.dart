import "package:flutter/material.dart";

Color mainBGColor = Color(0xFF652A78);
Color redColor = Color(0xFFDE3C10);
Color purpleColor = Color(0xFF8132AD);
Color cyan = Color(0xFF99D5E5);
Color orange = Color(0xFFE97A4D);



class CustomPaintDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CustomPaint(child:Container(
      height:500
    ),painter:MyCustomPainter());
  }
  
}


class MyCustomPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    Paint paint=Paint();
    Path mainBGpath=Path();
    mainBGpath.addRect(Rect.fromLTWH(0, 0, size.width, size.height));
    paint.color=mainBGColor;
      canvas.drawPath(mainBGpath, paint);
    mainBGpath.close();
    Path purplePath=Path();
    purplePath.lineTo(size.width * .45, 0);
    purplePath.quadraticBezierTo(size.width*0.25, size.height*0.3,0, size.height*0.55);
    paint.color=purpleColor;
    canvas.drawPath(purplePath, paint);
    purplePath.close();  
    Path redPath=Path();
    redPath.moveTo(size.width*0.9, 0);
    redPath.quadraticBezierTo(size.width*0.3, size.height*0.4, 0, size.height*0.8);
    redPath.lineTo(0, size.height);
    redPath.lineTo(size.width*0.25,size.height);
    redPath.quadraticBezierTo(size.width*0.5, size.height*0.7,size.width ,size.height*0.6 );
    redPath.lineTo(size.width, 0);
    paint.color=redColor;
    canvas.drawPath(redPath, paint);
    redPath.close();
    Path orangePath=Path();
    orangePath.moveTo(0,size.height*0.8);
    orangePath.quadraticBezierTo(size.width*0.1,size.height*0.9 , size.width*0.25, size.height);
    paint.color=orange;
    orangePath.lineTo(0, size.height);
    
    orangePath.close();
    canvas.drawPath(orangePath, paint);
    Path trianglePath=Path();
    trianglePath.lineTo(size.width*0.25, 0);
    trianglePath.lineTo(0, size.height*0.25);
    paint.color=cyan;
    canvas.drawPath(trianglePath,paint);
  

  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return null;
  }
  
}