import '../../../../core.dart';

class LocaleValueConverter extends JayValueConverter<Locale, String> {
  @override
  Locale decode(String data, {required JayDecoder jay}) {
    final parts = data.split('-');
    if (parts.length == 1) {
      return Locale(parts[0]);
    } else if (parts.length == 2) {
      return Locale(parts[0], parts[1]);
    } else if (parts.length == 3) {
      return Locale.fromSubtags(
        languageCode: parts[0],
        scriptCode: parts[1],
        countryCode: parts[2],
      );
    } else {
      throw UnsupportedError('Unsupported Locale type: $data');
    }
  }

  @override
  String encode(Locale value, {required JayEncoder jay}) {
    return value.toLanguageTag();
  }
}
