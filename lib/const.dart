import 'package:flutter/material.dart';

const kButtonColor = Color(0xff1b1b1b);


// ext
extension ColorExtension on Color {
  Color withTransparent(double opacity) {
    assert(opacity >= 0.0 && opacity <= 1.0);
    return withAlpha((255.0 * opacity).round());
  }
}