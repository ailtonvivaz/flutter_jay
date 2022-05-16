import 'package:flutter/material.dart';

import 'preview_layout.dart';

abstract class JayComponent extends StatelessWidget {
  String get name;
  String get description;

  List<PreviewLayout> get previewLayouts => [PreviewLayouts.fit];

  const JayComponent({
    super.key,
  });

  Widget createComponent();

  @override
  Widget build(BuildContext context) => createComponent();
}
