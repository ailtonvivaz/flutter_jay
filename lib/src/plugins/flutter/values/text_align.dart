import '../../../../core.dart';

class TextAlignValueConverter extends JayValueConverter<TextAlign, String> {
  @override
  TextAlign decode(String data, {required JayDecoder jay}) {
    switch (data) {
      case 'left':
        return TextAlign.left;
      case 'right':
        return TextAlign.right;
      case 'center':
        return TextAlign.center;
      case 'justify':
        return TextAlign.justify;
      case 'start':
        return TextAlign.start;
      case 'end':
        return TextAlign.end;
      default:
        throw UnsupportedError('Unsupported TextAlign type: $data');
    }
  }

  @override
  String encode(TextAlign value, {required JayEncoder jay}) {
    switch (value) {
      case TextAlign.left:
        return 'left';
      case TextAlign.right:
        return 'right';
      case TextAlign.center:
        return 'center';
      case TextAlign.justify:
        return 'justify';
      case TextAlign.start:
        return 'start';
      case TextAlign.end:
        return 'end';
    }
  }
}
