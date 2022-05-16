import 'package:flutter/widgets.dart';

import '../jay_converter.dart';
import '../jay_value_converter.dart';

class TextWidthBasisValueConverter
    extends JayValueConverter<TextWidthBasis, String> {
  @override
  TextWidthBasis decode(String data, {required JayDecoder jay}) {
    switch (data) {
      case 'parent':
        return TextWidthBasis.parent;
      case 'longestLine':
        return TextWidthBasis.longestLine;
      default:
        throw UnsupportedError('Unsupported TextWidthBasis type: $data');
    }
  }

  @override
  String encode(TextWidthBasis value, {required JayEncoder jay}) {
    switch (value) {
      case TextWidthBasis.parent:
        return 'parent';
      case TextWidthBasis.longestLine:
        return 'longestLine';
    }
  }
}
