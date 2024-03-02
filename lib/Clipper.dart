import 'package:flutter/cupertino.dart';

class CustomClipperPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height;

    Path path = Path();
    path.moveTo(size.width*-0.0048544,size.height*0.7575758);
    path.quadraticBezierTo(size.width*0.0570388,size.height*0.9617424,size.width*0.1184466,size.height*0.9227273);
    path.cubicTo(size.width*0.3763350,size.height*0.8757576,size.width*0.3658981,size.height*0.0909091,size.width*0.4917476,size.height*0.0984848);
    path.cubicTo(size.width*0.6731796,size.height*0.0272727,size.width*0.6709951,size.height*0.8363636,size.width*0.8563107,size.height*0.9287879);
    path.quadraticBezierTo(size.width*0.9330097,size.height*0.9530303,size.width,size.height*0.7348485);
    path.lineTo(size.width,size.height*1.0015152);
    path.lineTo(size.width*-0.0038835,size.height*1.0090909);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}