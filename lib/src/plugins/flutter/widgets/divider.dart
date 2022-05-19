import 'package:flutter/material.dart';

import '../../../../core.dart';

class DividerWidgetConverter extends JayWidgetConverter<Divider> {
  @override
  String get type => 'divider';

  @override
  Divider decode(Map<String, dynamic> data, {required JayDecoder jay}) {
    return Divider(
      height: (data['height'] as num?)?.toDouble(),
      thickness: (data['thickness'] as num?)?.toDouble(),
      indent: (data['indent'] as num?)?.toDouble(),
      endIndent: (data['endIndent'] as num?)?.toDouble(),
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
