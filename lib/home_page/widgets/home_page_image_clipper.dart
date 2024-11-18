import 'dart:ui';

import 'package:flutter/material.dart';

class HomePageImageClipper extends CustomClipper<Path> {
  final double cornerRadius;

  HomePageImageClipper({required this.cornerRadius});
  @override
  Path getClip(Size size) {
    // Create a path similar to BorderRadius.circular
    return Path()
      ..addRRect(RRect.fromRectAndRadius(
        Rect.fromLTWH(0, 0, size.width, size.height),
        Radius.circular(cornerRadius),
      ));
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
