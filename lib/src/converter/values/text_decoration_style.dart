import 'dart:ui';

import '../jay_converter.dart';
import '../jay_value_converter.dart';

class TextDecorationStyleValueConverter
    extends JayValueConverter<TextDecorationStyle, String> {
  @override
  TextDecorationStyle decode(String data, {required JayDecoder jay}) {
    switch (data) {
      case 'dashed':
        return TextDecorationStyle.dashed;
      case 'dotted':
        return TextDecorationStyle.dotted;
      case 'double':
        return TextDecorationStyle.double;
      case 'solid':
        return TextDecorationStyle.solid;
      case 'wavy':
        return TextDecorationStyle.wavy;
      default:
        throw UnsupportedError('Unsupported TextDecorationStyle type: $data');
    }
  }

  @override
  String encode(TextDecorationStyle value, {required JayEncoder jay}) {
    switch (value) {
      case TextDecorationStyle.solid:
        return 'solid';
      case TextDecorationStyle.double:
        return 'double';
      case TextDecorationStyle.dotted:
        return 'dotted';
      case TextDecorationStyle.dashed:
        return 'dashed';
      case TextDecorationStyle.wavy:
        return 'wavy';
    }
  }
}
