import 'dart:ui';

import '../jay_converter.dart';
import '../jay_value_converter.dart';

class TextDecorationValueConverter
    extends JayValueConverter<TextDecoration, List<String>> {
  @override
  TextDecoration decode(List<String> data, {required JayDecoder jay}) {
    var decorations = <TextDecoration>[];

    if (data.contains('underline')) {
      decorations.add(TextDecoration.underline);
    }

    if (data.contains('overline')) {
      decorations.add(TextDecoration.overline);
    }

    if (data.contains('lineThrough')) {
      decorations.add(TextDecoration.lineThrough);
    }

    if (data.contains('none')) {
      decorations.add(TextDecoration.none);
    }

    return TextDecoration.combine(decorations);
  }

  @override
  List<String> encode(TextDecoration value, {required JayEncoder jay}) {
    var result = <String>[];

    if (value.contains(TextDecoration.underline)) {
      result.add('underline');
    }

    if (value.contains(TextDecoration.overline)) {
      result.add('overline');
    }

    if (value.contains(TextDecoration.lineThrough)) {
      result.add('lineThrough');
    }

    if (value.contains(TextDecoration.none)) {
      result.add('none');
    }

    return result;
  }
}
