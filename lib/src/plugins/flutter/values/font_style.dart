import '../../../../core.dart';

class FontStyleValueConverter extends JayValueConverter<FontStyle, String> {
  @override
  FontStyle decode(String data, {required JayDecoder jay}) {
    switch (data) {
      case 'normal':
        return FontStyle.normal;
      case 'italic':
        return FontStyle.italic;
      default:
        throw UnsupportedError('Unsupported FontStyle type: $data');
    }
  }

  @override
  String encode(FontStyle value, {required JayEncoder jay}) {
    switch (value) {
      case FontStyle.normal:
        return 'normal';
      case FontStyle.italic:
        return 'italic';
    }
  }
}
