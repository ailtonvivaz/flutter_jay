import '../../../../core.dart';

class ShadowValueConverter
    extends JayValueConverter<Shadow, Map<String, dynamic>> {
  @override
  Shadow decode(Map<String, dynamic> data, {required JayDecoder jay}) {
    return Shadow(
      color: jay.decodeValue<Color>(data['color']) ?? const Color(0xFF000000),
      offset: jay.decodeValue<Offset>(data['offset']) ?? Offset.zero,
      blurRadius: (data['blurRadius'] as num?)?.toDouble() ?? 0,
    );
  }

  @override
  Map<String, dynamic> encode(Shadow value, {required JayEncoder jay}) {
    return <String, dynamic>{
      'color': jay.encodeValue<Color>(value.color),
      'blurRadius': value.blurRadius,
      'offset': jay.encodeValue<Offset>(value.offset),
    };
  }
}
