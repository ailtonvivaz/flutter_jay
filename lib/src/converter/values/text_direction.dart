import 'dart:ui';

import '../jay_converter.dart';
import '../jay_value_converter.dart';

class TextDirectionValueConverter
    extends JayValueConverter<TextDirection, String> {
  @override
  TextDirection decode(String data, {required JayDecoder jay}) {
    switch (data) {
      case 'ltr':
        return TextDirection.ltr;
      case 'rtl':
        return TextDirection.rtl;
      default:
        throw UnsupportedError('Unsupported TextDirection type: $data');
    }
  }

  @override
  String encode(TextDirection value, {required JayEncoder jay}) {
    switch (value) {
      case TextDirection.ltr:
        return 'ltr';
      case TextDirection.rtl:
        return 'rtl';
    }
  }
}
