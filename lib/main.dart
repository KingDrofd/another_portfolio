import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:proffesional_portfolio/garbage_tests/hoverbutton.dart';
import 'package:proffesional_portfolio/variable.dart';
import 'package:proffesional_portfolio/widgets/codex.dart';
import 'package:proffesional_portfolio/widgets/custom_button.dart';

void main() {
  runApp(Codex());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: buildApp(width, height),
    );
  }

  Scaffold buildApp(double width, double height) {
    Color iconColor = defaultIconColor;

    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(left: 0, right: 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 39,
              ),
              Container(
                alignment: Alignment.center,
                width: width,
                height: height / 2,
                padding: EdgeInsets.all(8),
                child: const SelectableText(
                  "Lorem ipsum dolor sit amet, consectetur "
                  "adipiscing elit, sed do eiusmod tempor incididunt ut "
                  "labore et dolore magna aliqua. Ut enim ad minim veniam, "
                  "quis nostrud exercitation ullamco laboris nisi ut aliquip"
                  " ex ea commodo consequat. Duis aute irure dolor in reprehenderit "
                  "in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur "
                  "sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                  style: buttonStyleDefault,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ButtonMockUp(
                    icon: "assets/images/svgs/about.svg",
                    onPressed: () {
                      setState(() {
                        print("object");
                      });
                    },
                    btnText: "HOLO-ME",
                    widgetFlex: 1,
                    width: width,
                    height: height - 150,
                  ),
                  ButtonMockUp(
                    onPressed: () {
                      setState(() {
                        print("object");
                      });
                    },
                    icon: "assets/images/svgs/skills.svg",
                    btnText: "Skills",
                    width: width,
                    height: height - 150,
                    widgetFlex: 1,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ButtonMockUp(
                    onPressed: () {
                      print("object");
                    },
                    btnText: "Projects",
                    width: double.maxFinite,
                    height: height,
                  ),
                  ButtonMockUp(
                    onPressed: () {
                      print("object");
                    },
                    btnText: "Blog",
                    width: width,
                    height: height,
                  ),
                  ButtonMockUp(
                    onPressed: () {
                      print("object");
                    },
                    btnText: "Contact",
                    width: width,
                    height: height,
                  ),
                ],
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      print(btnIsHovered);
                    });
                  },
                  child: Text("test"))
            ],
          ),
        ),
      ),
    );
  }
}
