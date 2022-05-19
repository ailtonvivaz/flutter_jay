import '../../../../core.dart';

class StackWidgetConverter extends JayWidgetConverter<Stack> {
  @override
  String get type => 'stack';

  @override
  Stack decode(Map<String, dynamic> data, {required JayDecoder jay}) {
    final children = ((data['children']) as List<Map<String, dynamic>?>)
        .map(jay.decodeWidget)
        .toList()
        .whereType<Widget>()
        .toList();

    return Stack(
      alignment:
          jay.decodeValue(data['alignment']) ?? AlignmentDirectional.topStart,
      clipBehavior: jay.decodeValue(data['clipBehavior']) ?? Clip.hardEdge,
      fit: jay.decodeValue(data['fit']) ?? StackFit.loose,
      textDirection: jay.decodeValue(data['textDirection']),
      children: children,
    );
  }

  @override
  Map<String, dynamic> encode(Stack widget, {required JayEncoder jay}) {
    return {
      'alignment': widget.alignment == AlignmentDirectional.topStart
          ? null
          : jay.encodeValue<AlignmentGeometry>(widget.alignment),
      'clipBehavior': widget.clipBehavior == Clip.hardEdge
          ? null
          : jay.encodeValue<Clip>(widget.clipBehavior),
      'fit': widget.fit == StackFit.loose
          ? null
          : jay.encodeValue<StackFit>(widget.fit),
      'textDirection': jay.encodeValue<TextDirection>(widget.textDirection),
      'children': widget.children.map(jay.encodeWidget).toList(),
    };
  }
}
