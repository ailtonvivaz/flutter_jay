import 'package:flutter/material.dart';

import 'jay_component.dart';
import 'widgets/component_code_preview.dart';
import 'widgets/component_preview.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Component: ${widget.component.name}'),
      ),
      body: Row(
        children: [
          Expanded(
            flex: 1,
            child: ComponentCodePreview(widget.component),
          ),
          Expanded(
            flex: 1,
            child: ComponentPreview(widget.component),
          ),
        ],
      ),
    );
  }
}
