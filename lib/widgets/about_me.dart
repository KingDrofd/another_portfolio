import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:proffesional_portfolio/variable.dart';
import 'package:proffesional_portfolio/widgets/custom_header.dart';

class AboutWidget extends StatelessWidget {
  AboutWidget({super.key});

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
            Container(
              height: 600,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  ClipRRect(
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                              color: Colors.white,
                              offset: Offset(
                                6,
                                6,
                              ))
                        ],
                        color: Colors.red,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Container(
                        height: 600,
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            border: Border.all(
                              color: btnDefault.withOpacity(.3),
                              width: 1.8,
                              style: BorderStyle.solid,
                            )),
                        child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: SelectableText(
                            "Born in Madagascar. \n"
                            "Raised in Benin, finishing High-School "
                            "in Guinea, I have experienced "
                            "many foreign cultures and habits\n"
                            "after coming back to Morocco, \nI joined PIIMT as a Computer "
                            "Scientist, \nand graduated with a bachelor's degree in Big Data."
                            "While a college student, I tinkered around with game engines and "
                            "3d modeling softwares, earning me enough knowledge "
                            "to create some very helpful plugins",
                            style: GoogleFonts.sintony(
                              fontSize: 17,
                              color: Color.fromARGB(255, 228, 100, 0),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
