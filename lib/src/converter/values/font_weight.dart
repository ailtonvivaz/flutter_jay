import 'package:flutter/widgets.dart';

import '../jay_converter.dart';
import '../jay_value_converter.dart';

class FontWeightValueConverter extends JayValueConverter<FontWeight, String> {
  @override
  FontWeight decode(String data, {required JayDecoder jay}) {
    switch (data) {
      case '100':
        return FontWeight.w100;
      case '200':
        return FontWeight.w200;
      case '300':
        return FontWeight.w300;
      case '400':
        return FontWeight.w400;
      case '500':
        return FontWeight.w500;
      case '600':
        return FontWeight.w600;
      case '700':
        return FontWeight.w700;
      case '800':
        return FontWeight.w800;
      case '900':
        return FontWeight.w900;
      case 'normal':
        return FontWeight.normal;
      default:
        throw UnsupportedError('Unsupported FontWeight type: $data');
    }
  }

  @override
  String encode(FontWeight value, {required JayEncoder jay}) {
    switch (value) {
      case FontWeight.w100:
        return '100';
      case FontWeight.w200:
        return '200';
      case FontWeight.w300:
        return '300';
      case FontWeight.w400:
        return '400';
      case FontWeight.w500:
        return '500';
      case FontWeight.w600:
        return '600';
      case FontWeight.w700:
        return '700';
      case FontWeight.w800:
        return '800';
      case FontWeight.w900:
        return '900';
      default:
        return 'normal';
    }
  }
}
