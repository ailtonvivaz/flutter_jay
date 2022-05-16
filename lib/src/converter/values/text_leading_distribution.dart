import 'dart:ui';

import '../jay_converter.dart';
import '../jay_value_converter.dart';

class TextLeadingDistributionValueConverter
    extends JayValueConverter<TextLeadingDistribution, String> {
  @override
  TextLeadingDistribution decode(String data, {required JayDecoder jay}) {
    switch (data) {
      case 'proportional':
        return TextLeadingDistribution.proportional;
      case 'even':
        return TextLeadingDistribution.even;
      default:
        throw UnsupportedError(
            'Unsupported TextLeadingDistribution type: $data');
    }
  }

  @override
  String encode(TextLeadingDistribution value, {required JayEncoder jay}) {
    switch (value) {
      case TextLeadingDistribution.proportional:
        return 'proportional';
      case TextLeadingDistribution.even:
        return 'even';
    }
  }
}
