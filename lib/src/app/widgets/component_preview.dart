import 'package:flutter/material.dart';

import '../../../core.dart';
import '../jay_component.dart';

class ComponentPreview extends StatelessWidget {
  final JayComponent component;

  final ScrollController scrollController = ScrollController();

  ComponentPreview(this.component, {super.key});

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> encodedWidget =
        Jay.instance.encodeWidget(component.createComponent());

    return ListView.separated(
      padding: const EdgeInsets.all(16.0),
      controller: scrollController,
      shrinkWrap: true,
      separatorBuilder: (context, index) => const SizedBox(height: 20),
      itemCount: component.previewLayouts.length,
      itemBuilder: (context, index) {
        final previewLayout = component.previewLayouts[index];
        return Column(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).canvasColor,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 0,
                      blurRadius: 5,
                    ),
                  ],
                ),
                width: previewLayout.size.width,
                height:
                    previewLayout.fitHeight ? null : previewLayout.size.height,
                child: Theme(
                  data: ThemeData(
                    brightness: previewLayout.brightness,
                  ),
                  child: JayViewer(
                    data: encodedWidget,
                    // errorBuilder: (_, error, __) {
                    //   return Text(error.toString());
                    // },
                  ),
                ),
              ),
            ),
            previewLayout.description != null
                ? Text(previewLayout.description!)
                : Container(),
          ],
        );
      },
    );
  }
}
