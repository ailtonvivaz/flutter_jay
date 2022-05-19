import 'package:flutter/widgets.dart';

import '../jay_plugin.dart';
import 'jay_value_converter.dart';
import 'jay_widget_converter.dart';

abstract class JayEncoder {
  Map<String, dynamic>? encodeWidget(Widget? widget);
  dynamic encodeValue<T>(T? value);
}

abstract class JayDecoder {
  Widget? decodeWidget(Map<String, dynamic>? data);
  T? decodeValue<T>(dynamic data);
}

class JayConverter implements JayEncoder, JayDecoder {
  final Map<Type, JayWidgetEncoder> _widgetEncoders = {};
  final Map<String, JayWidgetDecoder> _widgetDecoders = {};

  final Map<Type, JayValueEncoder> _valueEncoders = {};
  final Map<Type, JayValueDecoder> _valueDecoders = {};

  JayConverter();

  @override
  Widget? decodeWidget(Map<String, dynamic>? data) {
    if (data == null) return null;

    final type = data['type'];
    final decoder = _widgetDecoders[type];
    if (decoder == null) {
      throw Exception('There is no decoder for widget type: $type');
    }
    return decoder.decode(data['args'], jay: this);
  }

  @override
  Map<String, dynamic>? encodeWidget(Widget? widget) {
    if (widget == null) return null;

    final encoder = _widgetEncoders[widget.runtimeType];
    if (encoder == null) {
      throw Exception(
          'There is no encoder for widget type: ${widget.runtimeType}');
    }
    return {
      'type': encoder.type,
      'args': encoder.encode(widget, jay: this)
        ..removeWhere((key, value) => value == null),
    };
  }

  @override
  T? decodeValue<T>(dynamic data) {
    if (data == null) return null;

    final decoder = _valueDecoders[T];
    if (decoder == null) {
      throw Exception('There is no one decoder for type: $T');
    }
    return decoder.decode(data, jay: this);
  }

  @override
  dynamic encodeValue<T>(T? value) {
    if (value == null) return null;

    final encoder = _valueEncoders[T];
    if (encoder == null) {
      throw Exception('There is no one encoder for type: $T');
    }

    final encoded = encoder.encode(value, jay: this);
    if (encoded is Map) {
      return encoded..removeWhere((key, value) => value == null);
    } else {
      return encoded;
    }
  }

  void registerPlugin(JayPlugin plugin) {
    plugin.widgetConverters.forEach(registerWidgetConverter);
    plugin.valueConverters.forEach(registerValueConverter);
  }

  void _registerWidgetEncoder(JayWidgetEncoder encoder) {
    _widgetEncoders[encoder.widgetType] = encoder;
  }

  void _registerWidgetDecoder(JayWidgetDecoder decoder) {
    _widgetDecoders[decoder.type] = decoder;
  }

  void registerWidgetConverter(JayWidgetConverter converter) {
    _registerWidgetEncoder(converter);
    _registerWidgetDecoder(converter);
  }

  void _registerValueEncoder(JayValueEncoder encoder) {
    _valueEncoders[encoder.valueType] = encoder;
  }

  void _registerValueDecoder(JayValueDecoder decoder) {
    _valueDecoders[decoder.valueType] = decoder;
  }

  void registerValueConverter(JayValueConverter converter) {
    _registerValueEncoder(converter);
    _registerValueDecoder(converter);
  }
}
