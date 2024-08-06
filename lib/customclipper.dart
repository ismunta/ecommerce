import 'package:flutter/material.dart';
class CustomizeClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    Path pp = Path();
    pp.lineTo(0, size.height-50);
    pp.cubicTo(size.width/4, 3*(size.height/3), 3*(size.width/4), size.height*0.75, size.width, size.height* 0.9);

    //pp.lineTo(0, size.height/2);
    //pp.quadraticBezierTo(size.width/2, size.height, size.width, size.height/2);
    //pp.cubicTo(size.width/4, 3*(size.height/2), 3*(size.width/4), size.height/2, size.width, size.height* 0.9);
    pp.lineTo(size.width, 0);

    // pp.moveTo(100, 100);
    // pp.lineTo(0, size.height);
    // pp.lineTo(size.width, size.height);
    // pp.lineTo(size.width, 100);

    return pp;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }

}