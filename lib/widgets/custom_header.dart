import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:proffesional_portfolio/variable.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader(
      {super.key,
      required this.title,
      this.subTitle = "",
      this.icon = "assets/images/svgs/about.svg"});

  final String title;
  final String subTitle;
  final String icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: EdgeInsets.all(8),
          child: Container(
            child: SvgPicture.asset(
              icon,
              colorFilter: ColorFilter.mode(
                defaultIconColor,
                BlendMode.srcIn,
              ),
            ),
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              border: Border.all(
                  width: 2, style: BorderStyle.solid, color: btnDefault),
            ),
            width: 100,
            height: 100,
          ),
        ),
        Expanded(
          flex: 3,
          child: Padding(
            padding: EdgeInsets.all(6.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: Text(
                            title,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.w100,
                              fontFamily: "EUROCAPS",
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 8.0),
                          child: Text(
                            subTitle,
                            style: TextStyle(
                              fontSize: 20,
                              color: Color.fromARGB(255, 255, 111, 0),
                              fontFamily: "EUROCAPS",
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: 8.0),
                              child: Text(
                                "Time",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 255, 111, 0),
                                  fontFamily: "EUROCAPS",
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 8.0),
                              child: Text(
                                "Date",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 255, 111, 0),
                                  fontFamily: "EUROCAPS",
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8.0, left: 3),
                          child: Container(
                            width: 2,
                            height: 45,
                            color: btnDefault,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Divider(
                  height: 5,
                  thickness: 2,
                  color: btnDefault,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
