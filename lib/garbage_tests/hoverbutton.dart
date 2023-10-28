import 'package:flutter/material.dart';

class HoverContainer extends StatefulWidget {
  @override
  _HoverContainerState createState() => _HoverContainerState();
}

class _HoverContainerState extends State<HoverContainer> {
  bool isHovered = false;

  void onEnter(PointerEvent event) {
    setState(() {
      isHovered = true;
    });
  }

  void onExit(PointerEvent event) {
    setState(() {
      isHovered = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final containerColor = isHovered ? Colors.blue : Colors.red;

    return MouseRegion(
      onEnter: onEnter,
      onExit: onExit,
      child: Container(
        width: 200,
        height: 200,
        color: containerColor,
        child: Center(
          child: Text('Hover over me!'),
        ),
      ),
    );
  }
}
