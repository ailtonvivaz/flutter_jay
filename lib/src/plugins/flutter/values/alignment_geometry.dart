import '../../../../core.dart';

class AlignmentGeometryValueConverter
    extends JayValueConverter<AlignmentGeometry, String> {
  @override
  AlignmentGeometry decode(String data, {required JayDecoder jay}) {
    if (data == 'topStart') return AlignmentDirectional.topStart;
    if (data == 'topEnd') return AlignmentDirectional.topEnd;
    if (data == 'centerStart') return AlignmentDirectional.centerStart;
    if (data == 'centerEnd') return AlignmentDirectional.centerEnd;
    if (data == 'bottomStart') return AlignmentDirectional.bottomStart;
    if (data == 'bottomEnd') return AlignmentDirectional.bottomEnd;

    if (data == 'topLeft') return Alignment.topLeft;
    if (data == 'topCenter') return Alignment.topCenter;
    if (data == 'topRight') return Alignment.topRight;
    if (data == 'centerLeft') return Alignment.centerLeft;
    if (data == 'center') return Alignment.center;
    if (data == 'centerRight') return Alignment.centerRight;
    if (data == 'bottomLeft') return Alignment.bottomLeft;
    if (data == 'bottomCenter') return Alignment.bottomCenter;
    if (data == 'bottomRight') return Alignment.bottomRight;

    throw UnsupportedError('Unsupported AlignmentGeometry type: $data');
  }

  @override
  String encode(AlignmentGeometry value, {required JayEncoder jay}) {
    if (value is Alignment) {
      if (value == Alignment.topLeft) return 'topLeft';
      if (value == Alignment.topCenter) return 'topCenter';
      if (value == Alignment.topRight) return 'topRight';
      if (value == Alignment.centerLeft) return 'centerLeft';
      if (value == Alignment.center) return 'center';
      if (value == Alignment.centerRight) return 'centerRight';
      if (value == Alignment.bottomLeft) return 'bottomLeft';
      if (value == Alignment.bottomCenter) return 'bottomCenter';
      if (value == Alignment.bottomRight) return 'bottomRight';
      return 'topLeft';
    } else if (value is AlignmentDirectional) {
      if (value == AlignmentDirectional.topStart) return 'topStart';
      if (value == AlignmentDirectional.topCenter) return 'topCenter';
      if (value == AlignmentDirectional.topEnd) return 'topEnd';
      if (value == AlignmentDirectional.centerStart) return 'centerStart';
      if (value == AlignmentDirectional.center) return 'center';
      if (value == AlignmentDirectional.centerEnd) return 'centerEnd';
      if (value == AlignmentDirectional.bottomStart) return 'bottomStart';
      if (value == AlignmentDirectional.bottomCenter) return 'bottomCenter';
      if (value == AlignmentDirectional.bottomEnd) return 'bottomEnd';
      return 'topStart';
    } else {
      throw UnsupportedError(
          'Unsupported AlignmentGeometry type: ${value.runtimeType}');
    }
  }
}
