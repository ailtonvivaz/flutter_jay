import '../../../../core.dart';

class ClipValueConverter extends JayValueConverter<Clip, String> {
  @override
  Clip decode(String data, {required JayDecoder jay}) {
    switch (data) {
      case 'none':
        return Clip.none;
      case 'hardEdge':
        return Clip.hardEdge;
      case 'antiAlias':
        return Clip.antiAlias;
      case 'antiAliasWithSaveLayer':
        return Clip.antiAliasWithSaveLayer;
      default:
        throw UnsupportedError('Unsupported Clip type: $data');
    }
  }

  @override
  String encode(Clip value, {required JayEncoder jay}) {
    switch (value) {
      case Clip.none:
        return 'none';
      case Clip.hardEdge:
        return 'hardEdge';
      case Clip.antiAlias:
        return 'antiAlias';
      case Clip.antiAliasWithSaveLayer:
        return 'antiAliasWithSaveLayer';
    }
  }
}
