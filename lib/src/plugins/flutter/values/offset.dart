import '../../../../core.dart';

class OffsetValueConverter
    extends JayValueConverter<Offset, Map<String, double>> {
  @override
  Offset decode(Map<String, double> data, {required JayDecoder jay}) {
    return Offset(
      data['dx'] ?? 0,
      data['dy'] ?? 0,
    );
  }

  @override
  Map<String, double> encode(Offset value, {required JayEncoder jay}) {
    return <String, double>{
      'dx': value.dx,
      'dy': value.dy,
    };
  }
}
