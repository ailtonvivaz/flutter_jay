import 'package:flutter/widgets.dart';

import '../jay_converter.dart';
import '../jay_value_converter.dart';

class VerticalDirectionValueConverter
    extends JayValueConverter<VerticalDirection, String> {
  @override
  VerticalDirection decode(String data, {required JayDecoder jay}) {
    switch (data) {
      case 'up':
        return VerticalDirection.up;
      case 'down':
        return VerticalDirection.down;
      default:
        throw Exception('Unknown VerticalDirection: $data');
    }
  }

  @override
  String encode(VerticalDirection value, {required JayEncoder jay}) {
    switch (value) {
      case VerticalDirection.up:
        return 'up';
      case VerticalDirection.down:
        return 'down';
    }
  }
}
