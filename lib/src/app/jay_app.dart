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
          theme: ThemeData(
            useMaterial3: true,
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
            // primarySwatch: Colors.teal,
            brightness: Brightness.light,
          ),
          darkTheme: ThemeData(
            useMaterial3: true,
            colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.teal,
              brightness: Brightness.dark,
            ),
          ),
          home: JayPage(components: components),
        );
}
