import 'dart:ui';

import '../jay_converter.dart';
import '../jay_value_converter.dart';

class ColorValueConverter extends JayValueConverter<Color, String> {
  @override
  Color decode(String data, {required JayDecoder jay}) {
    final hex = data.substring(1);
    final a = int.parse(hex.substring(0, 2), radix: 16);
    final r = int.parse(hex.substring(2, 4), radix: 16);
    final g = int.parse(hex.substring(4, 6), radix: 16);
    final b = int.parse(hex.substring(6, 8), radix: 16);
    return Color.fromARGB(a, r, g, b);
  }

  @override
  String encode(Color value, {required JayEncoder jay}) {
    return '#${value.value.toRadixString(16)}';
  }
}
