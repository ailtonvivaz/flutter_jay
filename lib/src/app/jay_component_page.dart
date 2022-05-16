import 'package:flutter/material.dart';
import 'package:jay/src/app/widgets/component_code_preview.dart';
import 'package:jay/src/app/widgets/component_preview.dart';

import '../converter/jay_converter.dart';
import 'jay_component.dart';

class JayComponentPage extends StatefulWidget {
  final JayComponent component;

  const JayComponentPage({
    super.key,
    required this.component,
  });

  @override
  State<JayComponentPage> createState() => _JayComponentPageState();
}

class _JayComponentPageState extends State<JayComponentPage> {
  final JayConverter converter = JayConverter();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.component.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: ComponentPreview(widget.component),
            ),
            Expanded(
              flex: 1,
              child: ComponentCodePreview(widget.component),
            ),
          ],
        ),
      ),
    );
  }
}
