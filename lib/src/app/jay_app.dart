import 'package:flutter/material.dart';

import 'jay_component.dart';
import 'jay_page.dart';

class JayApp extends MaterialApp {
  final List<JayComponent> components;

  JayApp({
    super.key,
    super.title = 'Jay App',
    required this.components,
  }) : super(
          theme: ThemeData(primarySwatch: Colors.blue),
          home: JayPage(components: components),
        );
}
