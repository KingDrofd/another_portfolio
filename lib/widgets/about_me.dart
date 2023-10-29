import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:proffesional_portfolio/widgets/custom_header.dart';

class AboutWidget extends StatelessWidget {
  const AboutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            const CustomHeader(
              title: "Abdellah",
              subTitle: "Regad",
              icon: "assets/images/svgs/skills.svg",
            ),
            Center(
              child: SelectableText(
                "When I was six years old",
                style: GoogleFonts.sintony(
                  fontSize: 17,
                  color: Color.fromARGB(255, 228, 100, 0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
