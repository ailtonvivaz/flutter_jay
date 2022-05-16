import 'package:flutter/widgets.dart';

import '../jay_converter.dart';
import '../jay_widget_converter.dart';

class CenterWidgetConverter extends JayWidgetConverter<Center> {
  @override
  String get type => 'center';

  @override
  Center decode(Map<String, dynamic> data, {required JayDecoder jay}) {
    return Center(
      child: jay.decodeWidget(data['child']),
    );
  }

  @override
  Map<String, dynamic> encode(Center widget, {required JayEncoder jay}) {
    return {
      'child': jay.encodeWidget(widget.child),
    };
  }
}
