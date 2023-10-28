import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:proffesional_portfolio/variable.dart';

class ButtonMockUp extends StatefulWidget {
  const ButtonMockUp({
    super.key,
    required this.width,
    required this.height,
    required this.onPressed,
    this.btnText = btnTextDefault,
    this.widgetFlex = 1,
    this.icon = "assets/images/svgs/about.svg",
    this.padding = 1,
    this.textStyle = buttonStyleDefault,
  });

  final double width;
  final double height;
  final int widgetFlex;
  final double padding;
  final String icon;
  final String btnText;
  final VoidCallback onPressed;
  final TextStyle textStyle;

  @override
  State<ButtonMockUp> createState() => _ButtonMockUpState();
}

class _ButtonMockUpState extends State<ButtonMockUp> {
  Color containerColor = btnDefaultColor;
  Color iconColor = defaultIconColor;
  void onEnter(PointerEvent event) {
    setState(() {
      //btnIsHovered = !btnIsHovered;
      containerColor = btnHoverColor;
      iconColor = iconHoverColor;
    });
  }

  void onExit(PointerEvent event) {
    setState(() {
      //btnIsHovered = !btnIsHovered;
      containerColor = btnDefaultColor;
      iconColor = defaultIconColor;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: widget.widgetFlex,
      child: MouseRegion(
        onEnter: onEnter,
        onExit: onExit,
        child: GestureDetector(
          onTapDown: (details) {
            setState(() {
              containerColor = Colors.white;
            });
          },
          onTapUp: (details) {
            setState(() {
              containerColor = btnDefaultColor;
              iconColor = defaultIconColor;
            });
            widget.onPressed();
          },
          onLongPress: () {
            widget.onPressed();
            iconColor = defaultIconColor;
            containerColor = btnDefaultColor;
          },
          child: Padding(
            padding: EdgeInsets.all(widget.padding),
            child: Container(
              alignment: Alignment.topCenter,
              width: widget.width / 2 - 3,
              height: widget.height / 6,
              color: containerColor,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      widget.icon,
                      width: 40,
                      height: 40,
                      colorFilter: ColorFilter.mode(
                        iconColor,
                        BlendMode.srcIn,
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      widget.btnText,
                      style: TextStyle(
                        color: iconColor,
                        fontFamily: "EUROCAPS",
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
