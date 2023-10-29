import 'package:flutter/material.dart';

class AnimatedHoverColorChangeContainer extends StatefulWidget {
  @override
  _AnimatedHoverColorChangeContainerState createState() =>
      _AnimatedHoverColorChangeContainerState();
}

class _AnimatedHoverColorChangeContainerState
    extends State<AnimatedHoverColorChangeContainer> {
  bool isHovered = false;

  void _handleHover(bool isHovering) {
    setState(() {
      isHovered = isHovering;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => _handleHover(true),
      onExit: (_) => _handleHover(false),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300), // Animation duration
        width: 200,
        height: 200,
        color: isHovered ? Colors.blue : Colors.green,
        child: Center(
          child: Text(
            isHovered ? 'Hovered' : 'Not Hovered',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
