import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:jay/jay.dart';

import '../../converter/jay_converter.dart';

class ComponentCodePreview extends StatefulWidget {
  final JayComponent component;

  const ComponentCodePreview(this.component, {super.key});

  @override
  State<ComponentCodePreview> createState() => _ComponentCodePreviewState();
}

class _ComponentCodePreviewState extends State<ComponentCodePreview> {
  final JayConverter converter = JayConverter();

  ScrollController controller = ScrollController();

  String getPrettyJSONString(jsonObject) {
    var encoder = const JsonEncoder.withIndent("     ");
    return encoder.convert(jsonObject);
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      controller: controller,
      children: [
        Center(child: Text(widget.component.description)),
        Container(
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            color: Colors.grey[200],
          ),
          child: Text(
            getPrettyJSONString(
                converter.encodeWidget(widget.component.createComponent())),
          ),
        ),
      ],
    );
  }
}
