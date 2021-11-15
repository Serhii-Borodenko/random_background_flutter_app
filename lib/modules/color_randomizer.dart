import 'package:flutter/material.dart';
import 'dart:math';

final Random random = Random();

class ColorRandomizer {
  final Color _randomColor = Color.fromRGBO(
      random.nextInt(256), random.nextInt(256), random.nextInt(256), 1);

  Color get randomColor => _randomColor;

  Color complementaryColor(Color anyColor) {
    final int r =
        (255 - int.parse(anyColor.toString().substring(10, 12), radix: 16));

    final int g =
        (255 - int.parse(anyColor.toString().substring(12, 14), radix: 16));

    final int b =
        (255 - int.parse(anyColor.toString().substring(14, 16), radix: 16));

    Color _color = Color.fromRGBO(r, g, b, 1);
    return _color;
  }
}
