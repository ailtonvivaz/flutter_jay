import 'package:flutter/widgets.dart';

import '../jay_converter.dart';
import '../jay_value_converter.dart';

class EdgeInsetsGeometryValueConverter
    extends JayValueConverter<EdgeInsetsGeometry, Map<String, dynamic>> {
  @override
  EdgeInsetsGeometry decode(Map<String, dynamic> data,
      {required JayDecoder jay}) {
    final isDirectional = data['directional'] == true;

    if (isDirectional) {
      return EdgeInsetsDirectional.fromSTEB(
        data['start'] ?? 0,
        data['top'] ?? 0,
        data['end'] ?? 0,
        data['bottom'] ?? 0,
      );
    } else {
      return EdgeInsets.fromLTRB(
        data['left'] ?? 0,
        data['top'] ?? 0,
        data['right'] ?? 0,
        data['bottom'] ?? 0,
      );
    }
  }

  @override
  Map<String, dynamic> encode(EdgeInsetsGeometry value,
      {required JayEncoder jay}) {
    if (value is EdgeInsets) {
      return {
        'left': value.left,
        'top': value.top,
        'right': value.right,
        'bottom': value.bottom,
      };
    } else if (value is EdgeInsetsDirectional) {
      return {
        'directional': true,
        'start': value.start,
        'top': value.top,
        'end': value.end,
        'bottom': value.bottom,
      };
    } else {
      throw UnsupportedError(
          'Unsupported EdgeInsetsGeometry type: ${value.runtimeType}');
    }
  }
}
