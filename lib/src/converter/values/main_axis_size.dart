import 'package:flutter/widgets.dart';

import '../jay_converter.dart';
import '../jay_value_converter.dart';

class MainAxisSizeValueConverter
    extends JayValueConverter<MainAxisSize, String> {
  @override
  MainAxisSize decode(String data, {required JayDecoder jay}) {
    switch (data) {
      case 'min':
        return MainAxisSize.min;
      case 'max':
        return MainAxisSize.max;
      default:
        throw Exception('Unknown MainAxisSize: $data');
    }
  }

  @override
  String encode(MainAxisSize value, {required JayEncoder jay}) {
    switch (value) {
      case MainAxisSize.min:
        return 'min';
      case MainAxisSize.max:
        return 'max';
    }
  }
}
