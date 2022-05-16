import 'package:flutter/material.dart';

import '../jay_converter.dart';
import '../jay_widget_converter.dart';

class DividerWidgetConverter extends JayWidgetConverter<Divider> {
  @override
  String get type => 'divider';

  @override
  Divider decode(Map<String, dynamic> data, {required JayDecoder jay}) {
    return Divider(
      height: data['height'] as double?,
      thickness: data['thickness'] as double?,
      indent: data['indent'] as double?,
      endIndent: data['endIndent'] as double?,
      color: jay.decodeValue(data['color']),
    );
  }

  @override
  Map<String, dynamic> encode(Divider widget, {required JayEncoder jay}) {
    return {
      'height': widget.height,
      'thickness': widget.thickness,
      'indent': widget.indent,
      'endIndent': widget.endIndent,
      'color': jay.encodeValue<Color>(widget.color),
    };
  }
}
