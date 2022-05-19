import 'package:flutter/material.dart';

import '../../jay.dart';

typedef JayViewerWidgetBuilder = Widget Function(
  Object error,
  StackTrace stackTrace,
);

class JayViewer extends StatelessWidget {
  final Map<String, dynamic> data;
  final JayViewerWidgetBuilder? errorBuilder;

  const JayViewer({
    super.key,
    required this.data,
    this.errorBuilder,
  });

  @override
  Widget build(BuildContext context) {
    if (errorBuilder != null) {
      try {
        return _buildWidget(context);
      } catch (error, stackTrace) {
        return errorBuilder!(error, stackTrace);
      }
    } else {
      return _buildWidget(context);
    }
  }

  Widget _buildWidget(BuildContext context) {
    return Material(
      child: Jay.instance.decodeWidget(data),
    );
  }
}
