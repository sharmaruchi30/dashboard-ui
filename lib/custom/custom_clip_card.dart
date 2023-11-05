import 'package:flutter/material.dart';

class CustomClipCard extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    Path path = Path();
    double h = size.height;
    double w = size.width;

    path.lineTo(0, h);
    path.lineTo(w * 0.4, h);
    path.conicTo(w * 0.48, h, w * 0.50, h * 0.93, 2);
    path.conicTo(w * 0.51, h * 0.88, w * 0.8, h * 0.88, 2);
    path.conicTo(w, h * 0.88, w, h * 0.77, 2); // upper curve
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return false;
  }
}
