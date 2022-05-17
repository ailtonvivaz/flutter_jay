import 'package:flutter/widgets.dart';

import '../jay_converter.dart';
import '../jay_value_converter.dart';

class StackFitValueConverter extends JayValueConverter<StackFit, String> {
  @override
  StackFit decode(String data, {required JayDecoder jay}) {
    switch (data) {
      case 'loose':
        return StackFit.loose;
      case 'expand':
        return StackFit.expand;
      case 'passthrough':
        return StackFit.passthrough;
      default:
        throw UnsupportedError('Unsupported StackFit type: $data');
    }
  }

  @override
  String encode(StackFit value, {required JayEncoder jay}) {
    switch (value) {
      case StackFit.loose:
        return 'loose';
      case StackFit.expand:
        return 'expand';
      case StackFit.passthrough:
        return 'passthrough';
    }
  }
}
