import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:proffesional_portfolio/variable.dart';

class CustomContainer extends StatefulWidget {
  const CustomContainer({super.key, required this.paragraph});

  final String paragraph;
  @override
  State<CustomContainer> createState() => _CustomContainerState();
}

class _CustomContainerState extends State<CustomContainer> {
  bool isHovered = false;
  Color boxColor = Colors.transparent;
  void _onEnter(PointerEvent event) {
    setState(() {
      isHovered = true;
      boxColor = Color.fromARGB(38, 244, 67, 54);
    });
  }

  void _onExit(PointerEvent event) {
    setState(() {
      isHovered = false;
      boxColor = Colors.transparent;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scrollbarTheme: ScrollbarThemeData(
          mainAxisMargin: 8,
          thumbVisibility: MaterialStateProperty.all(true),
          thickness: MaterialStateProperty.all(6),
          thumbColor: MaterialStateProperty.all(
              isHovered ? Color.fromARGB(255, 255, 111, 0) : btnDefault),
          radius: Radius.zero,
        ),
      ),
      home: customContainer(),
    );
  }

  customContainer() {
    return Container(
      child: MouseRegion(
        onEnter: _onEnter,
        onExit: _onExit,
        child: Container(
          constraints: BoxConstraints(minHeight: 800),
          height: 800,
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  child: Transform.translate(
                    offset: Offset(0, -300),
                    child: _buildShadows(),
                  ),
                ),
              ),
              Center(
                child: _buildMainContainer(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  AnimatedContainer _buildShadows() {
    return AnimatedContainer(
      curve: Curves.easeOutCubic,
      duration: Duration(milliseconds: 400),
      height: double.maxFinite,
      width: double.maxFinite,
      decoration: BoxDecoration(
        boxShadow: <BoxShadow>[
          BoxShadow(
            blurRadius: 1000,
            spreadRadius: 300,
            blurStyle: BlurStyle.normal,
            color: boxColor,
            offset: Offset(
              0,
              -400,
            ),
          ),
          BoxShadow(
              blurRadius: 1000,
              spreadRadius: 300,
              blurStyle: BlurStyle.normal,
              color: boxColor,
              offset: Offset(
                0,
                1006,
              ))
        ],
        shape: BoxShape.circle,
      ),
    );
  }

  Padding _buildMainContainer() {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Container(
        height: 800,
        decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            border: Border.all(
              color: btnDefault.withOpacity(isHovered ? .5 : .3),
              width: 1.8,
              style: BorderStyle.solid,
            )),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 6.0,
            right: 6.0,
          ),
          child: Stack(
            children: [
              _buildScrollTrack(),
              _buildParagraph(),
            ],
          ),
        ),
      ),
    );
  }

  Align _buildScrollTrack() {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: EdgeInsets.only(
          right: 4,
          top: 8,
          bottom: 8,
        ),
        child: Container(
          width: 2,
          height: double.maxFinite,
          color: btnDefault.withOpacity(.3),
        ),
      ),
    );
  }

  SingleChildScrollView _buildParagraph() {
    return SingleChildScrollView(
      child: SelectableText(
        widget.paragraph,
        style: GoogleFonts.sintony(
          fontSize: 17,
          color: Color.fromARGB(255, 228, 100, 0),
        ),
      ),
    );
  }
}
