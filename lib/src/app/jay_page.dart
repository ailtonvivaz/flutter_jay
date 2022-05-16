import 'package:flutter/material.dart';

import 'jay_component.dart';
import 'jay_component_page.dart';

class JayPage extends StatefulWidget {
  final List<JayComponent> components;

  const JayPage({
    Key? key,
    required this.components,
  }) : super(key: key);

  @override
  State<JayPage> createState() => _JayPageState();
}

class _JayPageState extends State<JayPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Jay Page'),
      ),
      body: ListView.builder(
        itemCount: widget.components.length,
        itemBuilder: (_, int index) => _listItem(widget.components[index]),
      ),
    );
  }

  Widget _listItem(JayComponent component) {
    return GestureDetector(
      child: ListTile(
        title: Text(component.name),
        subtitle: Text(component.description),
      ),
      onTap: () => _openComponent(component),
    );
  }

  void _openComponent(JayComponent component) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) =>
            JayComponentPage(component: component),
      ),
    );
  }
}
