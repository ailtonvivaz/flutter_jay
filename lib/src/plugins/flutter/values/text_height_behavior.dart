import '../../../../core.dart';

class TextHeightBehaviorValueConverter
    extends JayValueConverter<TextHeightBehavior, Map<String, dynamic>> {
  @override
  TextHeightBehavior decode(Map<String, dynamic> data,
      {required JayDecoder jay}) {
    return TextHeightBehavior(
      applyHeightToFirstAscent:
          data['applyHeightToFirstAscent'] as bool? ?? true,
      applyHeightToLastDescent:
          data['applyHeightToLastDescent'] as bool? ?? true,
      leadingDistribution: jay.decodeValue(data['applyHeightToFullAscent']) ??
          TextLeadingDistribution.proportional,
    );
  }

  @override
  Map<String, dynamic> encode(TextHeightBehavior value,
      {required JayEncoder jay}) {
    return {
      'applyHeightToFirstAscent': value.applyHeightToFirstAscent ? null : true,
      'applyHeightToLastDescent': value.applyHeightToLastDescent ? null : true,
      'leadingDistribution': jay.encodeValue(value.leadingDistribution),
    };
  }
}
