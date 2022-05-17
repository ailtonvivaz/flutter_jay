import 'package:flutter/widgets.dart';

import '../jay_converter.dart';
import '../jay_widget_converter.dart';

class SizedBoxWidgetConverter extends JayWidgetConverter<SizedBox> {
  @override
  String get type => 'sized_box';

  @override
  SizedBox decode(Map<String, dynamic> data, {required JayDecoder jay}) {
    return SizedBox(
      width: data['width'],
      height: data['height'],
      child: jay.decodeWidget(data['child']),
    );
  }

  @override
  Map<String, dynamic> encode(SizedBox widget, {required JayEncoder jay}) {
    return {
      'width': widget.width,
      'height': widget.height,
      'child': jay.encodeWidget(widget.child),
    };
  }
}
