import 'package:flutter/material.dart';

class CustomClipCardSmall extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    Path path = Path();
    double h = size.height;
    double w = size.width;

    path.lineTo(0, h);
    path.lineTo(w * 0.4, h);
    path.conicTo(w * 0.45, h, w * 0.50, h * 0.89, 2);
    path.conicTo(w * 0.55, h * 0.83, w * 0.8, h * 0.83, 2);
    path.conicTo(w, h * 0.83, w, h * 0.75, 2); // upper curve
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return true;
  }
}
