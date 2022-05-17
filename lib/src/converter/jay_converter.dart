import 'package:flutter/widgets.dart';
import 'package:jay/src/converter/values/text_style.dart';

import 'jay_value_converter.dart';
import 'jay_widget_converter.dart';
import 'values/values.dart';
import 'widgets/widgets.dart';

abstract class JayEncoder {
  Map<String, dynamic>? encodeWidget(Widget? widget);
  dynamic encodeValue<T>(T? value);
}

abstract class JayDecoder {
  Widget? decodeWidget(Map<String, dynamic>? data);
  T? decodeValue<T>(dynamic data);
}

class JayConverter implements JayEncoder, JayDecoder {
  final Map<Type, JayWidgetEncoder> _encoders = {};
  final Map<String, JayWidgetDecoder> _decoders = {};

  final Map<Type, JayValueConverter> _valueConverters = {};

  final List<JayWidgetConverter> _defaultConverters = [
    TextWidgetConverter(),
    ContainerWidgetConverter(),
    ColumnWidgetConverter(),
    CenterWidgetConverter(),
    DividerWidgetConverter(),
    SpacerWidgetConverter(),
    RowWidgetConverter(),
    StackWidgetConverter(),
    SizedBoxWidgetConverter(),
  ];

  final List<JayValueConverter> _defaultValueConverters = [
    ColorValueConverter(),
    EdgeInsetsGeometryValueConverter(),
    AlignmentGeometryValueConverter(),
    TextAlignValueConverter(),
    TextStyleValueConverter(),
    FontWeightValueConverter(),
    FontStyleValueConverter(),
    TextBaselineValueConverter(),
    TextLeadingDistributionValueConverter(),
    LocaleValueConverter(),
    ShadowValueConverter(),
    OffsetValueConverter(),
    FontFeatureValueConverter(),
    TextDecorationValueConverter(),
    TextDecorationStyleValueConverter(),
    TextOverflowValueConverter(),
    TextWidthBasisValueConverter(),
    TextHeightBehaviorValueConverter(),
    BoxConstraintsValueConverter(),
    MainAxisAlignmentValueConverter(),
    MainAxisSizeValueConverter(),
    CrossAxisAlignmentValueConverter(),
    VerticalDirectionValueConverter(),
    StackFitValueConverter(),
    ClipValueConverter(),
  ];

  JayConverter() {
    _defaultConverters.forEach(registerWidgetConverter);
    _defaultValueConverters.forEach(registerValueConverter);
  }

  @override
  Widget? decodeWidget(Map<String, dynamic>? data) {
    if (data == null) return null;

    final type = data['type'];
    final decoder = _decoders[type];
    if (decoder == null) {
      throw Exception('Unknown widget type: $type');
    }
    return decoder.decode(data['args'], jay: this);
  }

  @override
  Map<String, dynamic>? encodeWidget(Widget? widget) {
    if (widget == null) return null;

    final encoder = _encoders[widget.runtimeType];
    if (encoder == null) {
      throw Exception('Unknown widget type: ${widget.runtimeType}');
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

    final converter = _valueConverters[T];
    if (converter == null) {
      throw Exception('There is no one decoder for type: $T');
    }
    return converter.decode(data, jay: this);
  }

  @override
  dynamic encodeValue<T>(T? value) {
    if (value == null) return null;

    final converter = _valueConverters[T];
    if (converter == null) {
      throw Exception('There is no one encoder for type: $T');
    }
    final encoded = converter.encode(value, jay: this);
    if (encoded is Map) {
      return encoded..removeWhere((key, value) => value == null);
    } else {
      return encoded;
    }
  }

  void overrideWidgetEncoder(JayWidgetEncoder encoder) {
    _encoders[encoder.widgetType] = encoder;
  }

  void _registerWidgetEncoder(JayWidgetEncoder encoder) {
    _encoders[encoder.widgetType] = encoder;
  }

  void _registerWidgetDecoder(JayWidgetDecoder decoder) {
    _decoders[decoder.type] = decoder;
  }

  void registerWidgetConverter(JayWidgetConverter converter) {
    _registerWidgetEncoder(converter);
    _registerWidgetDecoder(converter);
  }

  void registerValueConverter(JayValueConverter converter) {
    _valueConverters[converter.valueType] = converter;
  }
}
