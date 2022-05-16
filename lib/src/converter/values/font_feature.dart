import 'dart:ui';

import '../jay_converter.dart';
import '../jay_value_converter.dart';

class FontFeatureValueConverter
    extends JayValueConverter<FontFeature, Map<String, dynamic>> {
  @override
  FontFeature decode(Map<String, dynamic> data, {required JayDecoder jay}) {
    return FontFeature(
      data['feature'] as String,
      data['value'] as int? ?? 1,
    );
  }

  @override
  Map<String, dynamic> encode(FontFeature value, {required JayEncoder jay}) {
    return <String, dynamic>{
      'feature': value.feature,
      'value': value.value == 1 ? null : value.value,
    };
  }
}
