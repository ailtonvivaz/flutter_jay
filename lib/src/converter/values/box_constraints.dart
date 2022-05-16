import 'package:flutter/widgets.dart';

import '../jay_converter.dart';
import '../jay_value_converter.dart';

class BoxConstraintsValueConverter
    extends JayValueConverter<BoxConstraints, Map<String, dynamic>> {
  @override
  BoxConstraints decode(Map<String, dynamic> data, {required JayDecoder jay}) {
    return BoxConstraints(
      minWidth: data['minWidth'],
      maxWidth: data['maxWidth'],
      minHeight: data['minHeight'],
      maxHeight: data['maxHeight'],
    );
  }

  @override
  Map<String, dynamic> encode(BoxConstraints value, {required JayEncoder jay}) {
    return {
      'minWidth': value.minWidth,
      'maxWidth': value.maxWidth,
      'minHeight': value.minHeight,
      'maxHeight': value.maxHeight,
    };
  }
}
