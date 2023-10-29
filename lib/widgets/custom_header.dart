import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:proffesional_portfolio/variable.dart';
import 'package:intl/intl.dart';

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
    return _buildHeader();
  }

  Row _buildHeader() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        _buildIcon(),
        Expanded(
          flex: 3,
          child: Padding(
            padding: const EdgeInsets.all(6.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [_buildTitle(), _buildTimeDate()],
                ),
                const Divider(
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

  Padding _buildIcon() {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          border:
              Border.all(width: 2, style: BorderStyle.solid, color: btnDefault),
        ),
        width: 100,
        height: 100,
        child: SvgPicture.asset(
          icon,
          colorFilter: const ColorFilter.mode(
            defaultIconColor,
            BlendMode.srcIn,
          ),
        ),
      ),
    );
  }

  Column _buildTitle() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.w100,
              fontFamily: "EUROCAPS",
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Text(
            subTitle,
            style: const TextStyle(
              fontSize: 17,
              color: Color.fromARGB(255, 255, 100, 0),
              fontFamily: "EUROCAPS",
            ),
          ),
        ),
      ],
    );
  }

  Row _buildTimeDate() {
    DateTime date = DateTime.now();
    String formattedTime = DateFormat('Hms').format(date);
    String formattedDate = DateFormat('d MMM y').format(date);
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 8.0),
              child: Text(
                formattedTime,
                style: TextStyle(
                  fontSize: 25,
                  color: Color.fromARGB(255, 255, 111, 0),
                  fontFamily: "EUROCAPS",
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 8.0),
              child: Text(
                formattedDate,
                style: TextStyle(
                  fontSize: 17,
                  color: Color.fromARGB(255, 255, 100, 0),
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
            height: 50,
            color: btnDefault,
          ),
        ),
      ],
    );
  }
}
