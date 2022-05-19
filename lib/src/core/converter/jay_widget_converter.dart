import 'package:flutter/widgets.dart';

import 'jay_converter.dart';

abstract class JayWidgetEncoder<W extends Widget> {
  Type get widgetType => W;
  String get type;

  Map<String, dynamic> encode(W widget, {required JayEncoder jay});
}

abstract class JayWidgetDecoder<W extends Widget> {
  String get type;

  W decode(Map<String, dynamic> data, {required JayDecoder jay});
}

abstract class JayWidgetConverter<W extends Widget>
    implements JayWidgetEncoder<W>, JayWidgetDecoder<W> {
  @override
  Type get widgetType => W;
}
