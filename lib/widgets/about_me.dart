import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:proffesional_portfolio/variable.dart';
import 'package:proffesional_portfolio/widgets/custom_container.dart';
import 'package:proffesional_portfolio/widgets/custom_header.dart';

class AboutWidget extends StatefulWidget {
  AboutWidget({super.key});

  @override
  State<AboutWidget> createState() => _AboutWidgetState();
}

class _AboutWidgetState extends State<AboutWidget> {
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
    return Column(
      children: [
        CustomHeader(
          title: "Abdellah",
          subTitle: "Regad",
          icon: "assets/images/svgs/skills.svg",
        ),
        Flexible(
          child: CustomContainer(
            paragraph: "Born in Madagascar. \n"
                "Raised in Benin, finishing High-School "
                "in Guinea, I have experienced "
                "many foreign cultures and habits\n"
                "after coming back to Morocco, \nI joined PIIMT as a Computer "
                "Scientist, \nand graduated with a bachelor's degree in Big Data."
                "While a college student, I tinkered around with game engines and "
                "3d modeling softwares, earning me enough knowledge "
                "to create some very helpful plugins"
                "Born in Madagascar. \n"
                "Raised in Benin, finishing High-School "
                "in Guinea, I have experienced "
                "many foreign cultures and habits\n"
                "after coming back to Morocco, \nI joined PIIMT as a Computer "
                "Scientist, \nand graduated with a bachelor's degree in Big Data."
                "While a college student, I tinkered around with game engines and "
                "3d modeling softwares, earning me enough knowledge "
                "to create some very helpful plugins"
                "Born in Madagascar. \n"
                "Raised in Benin, finishing High-School "
                "in Guinea, I have experienced "
                "many foreign cultures and habits\n"
                "after coming back to Morocco, \nI joined PIIMT as a Computer "
                "Scientist, \nand graduated with a bachelor's degree in Big Data."
                "While a college student, I tinkered around with game engines and "
                "3d modeling softwares, earning me enough knowledge "
                "to create some very helpful plugins"
                "Born in Madagascar. \n"
                "Raised in Benin, finishing High-School "
                "in Guinea, I have experienced "
                "many foreign cultures and habits\n"
                "after coming back to Morocco, \nI joined PIIMT as a Computer "
                "Scientist, \nand graduated with a bachelor's degree in Big Data."
                "While a college student, I tinkered around with game engines and "
                "3d modeling softwares, earning me enough knowledge "
                "to create some very helpful plugins"
                "Born in Madagascar. \n"
                "Raised in Benin, finishing High-School "
                "in Guinea, I have experienced "
                "many foreign cultures and habits\n"
                "after coming back to Morocco, \nI joined PIIMT as a Computer "
                "Scientist, \nand graduated with a bachelor's degree in Big Data."
                "While a college student, I tinkered around with game engines and "
                "3d modeling softwares, earning me enough knowledge "
                "to create some very helpful plugins",
          ),
        ),
      ],
    );
  }

  Flexible customContainer() {
    return Flexible(
      child: Container(
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
                      child: AnimatedContainer(
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
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Padding(
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
                            Align(
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
                            ),
                            SingleChildScrollView(
                              child: SelectableText(
                                "Born in Madagascar. \n"
                                "Raised in Benin, finishing High-School "
                                "in Guinea, I have experienced "
                                "many foreign cultures and habits\n"
                                "after coming back to Morocco, \nI joined PIIMT as a Computer "
                                "Scientist, \nand graduated with a bachelor's degree in Big Data."
                                "While a college student, I tinkered around with game engines and "
                                "3d modeling softwares, earning me enough knowledge "
                                "to create some very helpful plugins"
                                "Born in Madagascar. \n"
                                "Raised in Benin, finishing High-School "
                                "in Guinea, I have experienced "
                                "many foreign cultures and habits\n"
                                "after coming back to Morocco, \nI joined PIIMT as a Computer "
                                "Scientist, \nand graduated with a bachelor's degree in Big Data."
                                "While a college student, I tinkered around with game engines and "
                                "3d modeling softwares, earning me enough knowledge "
                                "to create some very helpful plugins"
                                "Born in Madagascar. \n"
                                "Raised in Benin, finishing High-School "
                                "in Guinea, I have experienced "
                                "many foreign cultures and habits\n"
                                "after coming back to Morocco, \nI joined PIIMT as a Computer "
                                "Scientist, \nand graduated with a bachelor's degree in Big Data."
                                "While a college student, I tinkered around with game engines and "
                                "3d modeling softwares, earning me enough knowledge "
                                "to create some very helpful plugins"
                                "Born in Madagascar. \n"
                                "Raised in Benin, finishing High-School "
                                "in Guinea, I have experienced "
                                "many foreign cultures and habits\n"
                                "after coming back to Morocco, \nI joined PIIMT as a Computer "
                                "Scientist, \nand graduated with a bachelor's degree in Big Data."
                                "While a college student, I tinkered around with game engines and "
                                "3d modeling softwares, earning me enough knowledge "
                                "to create some very helpful plugins"
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
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
