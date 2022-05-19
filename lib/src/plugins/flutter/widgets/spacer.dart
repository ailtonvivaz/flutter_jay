import '../../../../core.dart';

class SpacerWidgetConverter extends JayWidgetConverter<Spacer> {
  @override
  String get type => 'spacer';

  @override
  Spacer decode(Map<String, dynamic> data, {required JayDecoder jay}) {
    return Spacer(
      flex: data['flex'] as int? ?? 1,
    );
  }

  @override
  Map<String, dynamic> encode(Spacer widget, {required JayEncoder jay}) {
    return {
      'flex': widget.flex == 1 ? null : widget.flex,
    };
  }
}
