import 'dart:ui';

import '../../../../core.dart';

class TextStyleValueConverter
    extends JayValueConverter<TextStyle, Map<String, dynamic>> {
  @override
  TextStyle decode(Map<String, dynamic> data, {required JayDecoder jay}) {
    // TODO: foreground and background to be implemented

    final shadows = ((data['shadows']) as List?)
        ?.whereType<Map<String, dynamic>>()
        .map((e) => jay.decodeValue<Shadow>(e))
        .whereType<Shadow>()
        .toList();

    final fontFeatures = ((data['fontFeatures']) as List?)
        ?.whereType<Map<String, dynamic>>()
        .map((e) => jay.decodeValue<FontFeature>(e))
        .whereType<FontFeature>()
        .toList();

    return TextStyle(
      inherit: data['inherit'] as bool? ?? true,
      color: jay.decodeValue<Color>(data['color']),
      backgroundColor: jay.decodeValue<Color>(data['backgroundColor']),
      fontSize: (data['fontSize'] as num?)?.toDouble(),
      fontWeight: jay.decodeValue<FontWeight>(data['fontWeight']),
      fontStyle: jay.decodeValue<FontStyle>(data['fontStyle']),
      letterSpacing: (data['letterSpacing'] as num?)?.toDouble(),
      wordSpacing: (data['wordSpacing'] as num?)?.toDouble(),
      textBaseline: jay.decodeValue<TextBaseline>(data['textBaseline']),
      height: (data['height'] as num?)?.toDouble(),
      leadingDistribution:
          jay.decodeValue<TextLeadingDistribution>(data['leadingDistribution']),
      locale: jay.decodeValue<Locale>(data['locale']),
      shadows: shadows,
      fontFeatures: fontFeatures,
      decoration: jay.decodeValue<TextDecoration>(data['decoration']),
      decorationColor: jay.decodeValue<Color>(data['decorationColor']),
      decorationStyle:
          jay.decodeValue<TextDecorationStyle>(data['decorationStyle']),
      decorationThickness: (data['decorationThickness'] as num?)?.toDouble(),
      debugLabel: data['debugLabel'] as String?,
      fontFamily: data['fontFamily'] as String?,
      fontFamilyFallback: data['fontFamilyFallback'] as List<String>?,
      overflow: jay.decodeValue<TextOverflow>(data['overflow']),
    );
  }

  @override
  Map<String, dynamic> encode(TextStyle value, {required JayEncoder jay}) {
    return {
      'inherit': value.inherit ? null : false,
      'color': jay.encodeValue(value.color),
      'backgroundColor': jay.encodeValue(value.backgroundColor),
      'fontSize': value.fontSize,
      'fontWeight': jay.encodeValue(value.fontWeight),
      'fontStyle': jay.encodeValue(value.fontStyle),
      'letterSpacing': value.letterSpacing,
      'wordSpacing': value.wordSpacing,
      'textBaseline': jay.encodeValue(value.textBaseline),
      'height': value.height,
      'leadingDistribution': jay.encodeValue(value.leadingDistribution),
      'locale': jay.encodeValue(value.locale),
      'shadows': value.shadows?.map(jay.encodeValue).toList(),
      'fontFeatures': value.fontFeatures?.map(jay.encodeValue).toList(),
      'decoration': jay.encodeValue(value.decoration),
      'decorationColor': jay.encodeValue(value.decorationColor),
      'decorationStyle': jay.encodeValue(value.decorationStyle),
      'decorationThickness': value.decorationThickness,
      'debugLabel': value.debugLabel,
      'fontFamily': value.fontFamily,
      'fontFamilyFallback': value.fontFamilyFallback,
      'overflow': jay.encodeValue(value.overflow),
    };
  }
}
