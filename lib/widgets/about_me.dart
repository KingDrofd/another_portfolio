import 'package:flutter/material.dart';
import 'package:proffesional_portfolio/variable.dart';
import 'package:proffesional_portfolio/widgets/custom_header.dart';

class AboutWidget extends StatelessWidget {
  const AboutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            CustomHeader(
              title: "Abdellah",
              subTitle: "Regad",
              icon: "assets/images/svgs/skills.svg",
            ),
            Center(
              child: Text(
                "HELLO THERE!!!",
                style: buttonStyleDefault,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
