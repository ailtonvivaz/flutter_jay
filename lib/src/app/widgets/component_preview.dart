import 'package:flutter/material.dart';

import '../../../jay.dart';
import '../../converter/jay_converter.dart';

class ComponentPreview extends StatefulWidget {
  final JayComponent component;

  const ComponentPreview(this.component, {super.key});

  @override
  State<ComponentPreview> createState() => _ComponentPreviewState();
}

class _ComponentPreviewState extends State<ComponentPreview> {
  final JayConverter converter = JayConverter();

  JayComponent get component => widget.component;

  ScrollController controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    final encodedWidget = converter.encodeWidget(component.createComponent());
    final Widget previewWidget = converter.decodeWidget(encodedWidget)!;
    return ListView.separated(
      controller: controller,
      shrinkWrap: true,
      separatorBuilder: (context, index) => const SizedBox(height: 20),
      itemCount: component.previewLayouts.length,
      itemBuilder: (context, index) {
        final previewLayout = component.previewLayouts[index];
        return Center(
          child: Container(
            padding: const EdgeInsets.all(8),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 0,
                    blurRadius: 5,
                  ),
                ],
              ),
              width: previewLayout.width,
              height: previewLayout.height,
              child: previewWidget,
            ),
          ),
        );
      },
    );
  }
}
