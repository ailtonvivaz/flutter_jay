import 'package:flutter/material.dart';

import 'preview_layout.dart';

abstract class JayComponent {
  String get name;
  String get description;

  List<PreviewLayout> get previewLayouts => [PreviewLayout.fit()];

  const JayComponent();

  Widget createComponent();
}
