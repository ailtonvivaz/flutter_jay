import '../../../../core.dart';

class MainAxisAlignmentValueConverter
    extends JayValueConverter<MainAxisAlignment, String> {
  @override
  MainAxisAlignment decode(String data, {required JayDecoder jay}) {
    switch (data) {
      case 'start':
        return MainAxisAlignment.start;
      case 'end':
        return MainAxisAlignment.end;
      case 'center':
        return MainAxisAlignment.center;
      case 'spaceBetween':
        return MainAxisAlignment.spaceBetween;
      case 'spaceAround':
        return MainAxisAlignment.spaceAround;
      case 'spaceEvenly':
        return MainAxisAlignment.spaceEvenly;
      default:
        throw Exception('Unknown MainAxisAlignment: $data');
    }
  }

  @override
  String encode(MainAxisAlignment value, {required JayEncoder jay}) {
    switch (value) {
      case MainAxisAlignment.start:
        return 'start';
      case MainAxisAlignment.end:
        return 'end';
      case MainAxisAlignment.center:
        return 'center';
      case MainAxisAlignment.spaceBetween:
        return 'spaceBetween';
      case MainAxisAlignment.spaceAround:
        return 'spaceAround';
      case MainAxisAlignment.spaceEvenly:
        return 'spaceEvenly';
    }
  }
}
