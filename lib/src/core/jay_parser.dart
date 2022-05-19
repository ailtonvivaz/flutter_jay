import 'package:flutter/widgets.dart';

import 'converter/jay_converter.dart';
import 'jay_plugin.dart';

class Jay {
  final JayConverter _converter = JayConverter();

  static Jay get instance => _instance;

  static final Jay _instance = Jay._();

  Jay._();

  void registerPlugin(JayPlugin plugin) {
    plugin.widgetConverters.forEach(_converter.registerWidgetConverter);
    plugin.valueConverters.forEach(_converter.registerValueConverter);
  }

  Map<String, dynamic> encodeWidget(Widget widget) {
    final data = _converter.encodeWidget(widget);
    if (data == null) {
      throw Exception('Failed to encode widget');
    }
    return data;
  }

  Widget decodeWidget(Map<String, dynamic> data) {
    final widget = _converter.decodeWidget(data);
    if (widget == null) {
      throw Exception('Failed to decode widget');
    }
    return widget;
  }
}
