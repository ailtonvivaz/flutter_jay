import 'package:flutter/widgets.dart';

import '../jay_converter.dart';
import '../jay_value_converter.dart';

class TextOverflowValueConverter
    extends JayValueConverter<TextOverflow, String> {
  @override
  TextOverflow decode(String data, {required JayDecoder jay}) {
    switch (data) {
      case 'clip':
        return TextOverflow.clip;
      case 'ellipsis':
        return TextOverflow.ellipsis;
      case 'fade':
        return TextOverflow.fade;
      case 'visible':
        return TextOverflow.visible;
      default:
        throw UnsupportedError('Unsupported TextOverflow type: $data');
    }
  }

  @override
  String encode(TextOverflow value, {required JayEncoder jay}) {
    switch (value) {
      case TextOverflow.clip:
        return 'clip';
      case TextOverflow.ellipsis:
        return 'ellipsis';
      case TextOverflow.fade:
        return 'fade';
      case TextOverflow.visible:
        return 'visible';
    }
  }
}
