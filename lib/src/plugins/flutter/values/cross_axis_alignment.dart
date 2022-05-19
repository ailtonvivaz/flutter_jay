import '../../../../core.dart';

class CrossAxisAlignmentValueConverter
    extends JayValueConverter<CrossAxisAlignment, String> {
  @override
  CrossAxisAlignment decode(String data, {required JayDecoder jay}) {
    switch (data) {
      case 'start':
        return CrossAxisAlignment.start;
      case 'end':
        return CrossAxisAlignment.end;
      case 'center':
        return CrossAxisAlignment.center;
      case 'stretch':
        return CrossAxisAlignment.stretch;
      case 'baseline':
        return CrossAxisAlignment.baseline;
      default:
        throw Exception('Unknown CrossAxisAlignment: $data');
    }
  }

  @override
  String encode(CrossAxisAlignment value, {required JayEncoder jay}) {
    switch (value) {
      case CrossAxisAlignment.start:
        return 'start';
      case CrossAxisAlignment.end:
        return 'end';
      case CrossAxisAlignment.center:
        return 'center';
      case CrossAxisAlignment.stretch:
        return 'stretch';
      case CrossAxisAlignment.baseline:
        return 'baseline';
    }
  }
}
