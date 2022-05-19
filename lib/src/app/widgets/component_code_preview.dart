import 'dart:convert';

import 'package:flutter/material.dart';

import '../../../core.dart';
import '../jay_component.dart';

class ComponentCodePreview extends StatelessWidget {
  final JayComponent component;

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
                        Jay.instance.encodeWidget(component.createComponent())),
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
