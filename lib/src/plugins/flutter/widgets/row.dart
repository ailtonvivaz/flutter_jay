import '../../../../core.dart';

class RowWidgetConverter extends JayWidgetConverter<Row> {
  @override
  String get type => 'row';

  @override
  Row decode(Map<String, dynamic> data, {required JayDecoder jay}) {
    final children = ((data['children']) as List<Map<String, dynamic>?>)
        .map(jay.decodeWidget)
        .toList()
        .whereType<Widget>()
        .toList();

    return Row(
      mainAxisAlignment:
          jay.decodeValue(data['mainAxisAlignment']) ?? MainAxisAlignment.start,
      mainAxisSize: jay.decodeValue(data['mainAxisSize']) ?? MainAxisSize.max,
      crossAxisAlignment: jay.decodeValue(data['crossAxisAlignment']) ??
          CrossAxisAlignment.center,
      textDirection: jay.decodeValue(data['textDirection']),
      verticalDirection:
          jay.decodeValue(data['verticalDirection']) ?? VerticalDirection.down,
      textBaseline: jay.decodeValue(data['textBaseline']),
      children: children,
    );
  }

  @override
  Map<String, dynamic> encode(Row widget, {required JayEncoder jay}) {
    return {
      'mainAxisAlignment': widget.mainAxisAlignment == MainAxisAlignment.start
          ? null
          : jay.encodeValue<MainAxisAlignment>(widget.mainAxisAlignment),
      'mainAxisSize': widget.mainAxisSize == MainAxisSize.max
          ? null
          : jay.encodeValue<MainAxisSize>(widget.mainAxisSize),
      'crossAxisAlignment':
          widget.crossAxisAlignment == CrossAxisAlignment.center
              ? null
              : jay.encodeValue<CrossAxisAlignment>(widget.crossAxisAlignment),
      'textDirection': jay.encodeValue<TextDirection>(widget.textDirection),
      'verticalDirection': widget.verticalDirection == VerticalDirection.down
          ? null
          : jay.encodeValue<VerticalDirection>(widget.verticalDirection),
      'textBaseline': jay.encodeValue<TextBaseline>(widget.textBaseline),
      'children': widget.children.map(jay.encodeWidget).toList(),
    };
  }
}
