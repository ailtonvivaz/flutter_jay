import '../../../../core.dart';

class TextWidgetConverter extends JayWidgetConverter<Text> {
  @override
  String get type => 'text';

  @override
  Text decode(Map<String, dynamic> data, {required JayDecoder jay}) {
    // TODO: implement Text.rich

    final String text = data['data'];
    final TextStyle? style = jay.decodeValue(data['style']);
    final TextAlign? textAlign = jay.decodeValue(data['textAlign']);
    final TextDirection? textDirection = jay.decodeValue(data['textDirection']);
    final Locale? locale = jay.decodeValue(data['locale']);
    final bool softWrap = data['softWrap'] as bool? ?? true;
    final TextOverflow? overflow = jay.decodeValue(data['overflow']);
    final double textScaleFactor =
        (data['textScaleFactor'] as num?)?.toDouble() ?? 1.0;
    final int maxLines = data['maxLines'] as int? ?? 1;
    final String? semanticsLabel = data['semanticsLabel'] as String?;
    final TextWidthBasis? textWidthBasis =
        jay.decodeValue(data['textWidthBasis']);

    return Text(
      text,
      style: style,
      textAlign: textAlign,
      textDirection: textDirection,
      locale: locale,
      softWrap: softWrap,
      overflow: overflow,
      textScaleFactor: textScaleFactor,
      maxLines: maxLines,
      semanticsLabel: semanticsLabel,
      textWidthBasis: textWidthBasis,
    );
  }

  @override
  Map<String, dynamic> encode(Text widget, {required JayEncoder jay}) {
    final text = widget.data;
    final style = jay.encodeValue<TextStyle>(widget.style);
    final textAlign = jay.encodeValue<TextAlign>(widget.textAlign);
    final textDirection = jay.encodeValue<TextDirection>(widget.textDirection);
    final locale = jay.encodeValue<Locale>(widget.locale);
    final softWrap = widget.softWrap;
    final overflow = jay.encodeValue<TextOverflow>(widget.overflow);
    final textScaleFactor = widget.textScaleFactor;
    final maxLines = widget.maxLines;
    final semanticsLabel = widget.semanticsLabel;
    final textWidthBasis =
        jay.encodeValue<TextWidthBasis>(widget.textWidthBasis);
    final textHeightBehavior = jay.encodeValue(widget.textHeightBehavior);

    return {
      'data': text,
      'style': style,
      'textAlign': textAlign,
      'textDirection': textDirection,
      'locale': locale,
      'softWrap': softWrap,
      'overflow': overflow,
      'textScaleFactor': textScaleFactor,
      'maxLines': maxLines,
      'semanticsLabel': semanticsLabel,
      'textWidthBasis': textWidthBasis,
      'textHeightBehavior': textHeightBehavior,
    };
  }
}
