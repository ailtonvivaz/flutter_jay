import 'dart:ui';

import '../jay_converter.dart';
import '../jay_value_converter.dart';

class TextBaselineValueConverter
    extends JayValueConverter<TextBaseline, String> {
  @override
  TextBaseline decode(String data, {required JayDecoder jay}) {
    switch (data) {
      case 'alphabetic':
        return TextBaseline.alphabetic;
      case 'ideographic':
        return TextBaseline.ideographic;
      default:
        throw UnsupportedError('Unsupported TextBaseline type: $data');
    }
  }

  @override
  String encode(TextBaseline value, {required JayEncoder jay}) {
    switch (value) {
      case TextBaseline.alphabetic:
        return 'alphabetic';
      case TextBaseline.ideographic:
        return 'ideographic';
    }
  }
}
