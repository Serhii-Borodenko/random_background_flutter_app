import 'dart:ui';
import 'package:random_background_color/modules/color_randomizer.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('test ColorRandomizer class', () {
    final colorRandomizer = ColorRandomizer();

    final result = colorRandomizer.complementaryColor(const Color(0xFF000000));
    expect(result, const Color(0xFFFFFFFF));
  });
}
