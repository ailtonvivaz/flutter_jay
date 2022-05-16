import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:jay/jay.dart';

import '../../converter/jay_converter.dart';

class ComponentCodePreview extends StatelessWidget {
  final JayComponent component;

  final JayConverter converter = JayConverter();

  final ScrollController scrollController = ScrollController();

  ComponentCodePreview(this.component, {super.key});

  String getPrettyJSONString(jsonObject) {
    var encoder = const JsonEncoder.withIndent("     ");
    return encoder.convert(jsonObject);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Text(
            component.description,
            style: const TextStyle(
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: Card(
              child: ListView(
                padding: const EdgeInsets.all(16.0),
                controller: scrollController,
                children: [
                  SelectableText(
                    getPrettyJSONString(
                        converter.encodeWidget(component.createComponent())),
                    style: const TextStyle(fontSize: 12),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
