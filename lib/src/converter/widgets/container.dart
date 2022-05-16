import 'package:flutter/widgets.dart';

import '../jay_converter.dart';
import '../jay_widget_converter.dart';

class ContainerWidgetConverter extends JayWidgetConverter<Container> {
  @override
  String get type => 'container';

  @override
  Container decode(Map<String, dynamic> data, {required JayDecoder jay}) {
    return Container(
      alignment: jay.decodeValue(data['alignment']),
      padding: jay.decodeValue(data['padding']),
      margin: jay.decodeValue(data['margin']),
      color: jay.decodeValue(data['color']),
      child: jay.decodeWidget(data['child']),
    );
  }

  @override
  Map<String, dynamic> encode(Container widget, {required JayEncoder jay}) {
    return {
      'alignment': jay.encodeValue<AlignmentGeometry>(widget.alignment),
      'padding': jay.encodeValue<EdgeInsetsGeometry>(widget.padding),
      'margin': jay.encodeValue<EdgeInsetsGeometry>(widget.margin),
      'color': jay.encodeValue<Color>(widget.color),
      'child': jay.encodeWidget(widget.child),
    };
  }
}
