import 'dart:ui';

import 'preview_size.dart';

class PreviewLayout {
  final String? description;
  final PreviewSize size;
  final bool fitHeight;
  final Brightness brightness;

  const PreviewLayout({
    required this.size,
    this.description,
    this.fitHeight = false,
    this.brightness = Brightness.light,
  });

  factory PreviewLayout.fit({String? description}) => PreviewLayout(
        description: description,
        size: PreviewSizes.fit,
      );
}
