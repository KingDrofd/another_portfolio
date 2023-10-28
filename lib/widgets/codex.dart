import 'package:flutter/material.dart';
import 'package:proffesional_portfolio/variable.dart';
import 'package:proffesional_portfolio/widgets/custom_button.dart';

class Codex extends StatelessWidget {
  const Codex({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      border: Border.all(
                          width: 2,
                          style: BorderStyle.solid,
                          color: btnDefault),
                    ),
                    width: 100,
                    height: 100,
                  ),
                ),
                Expanded(flex: 3, child: buildBartext()),
              ],
            ),
            Expanded(child: buildCodexGridButtons())
          ],
        ),
      ),
    );
  }

  Widget buildCodexGridButtons() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ButtonMockUp(
          width: 100,
          height: 100,
          onPressed: () {},
          widgetFlex: 1,
        ),
        Row(
          children: [
            ButtonMockUp(
              width: 100,
              height: 100,
              onPressed: () {},
              widgetFlex: 1,
            ),
            ButtonMockUp(
              width: 100,
              height: 100,
              onPressed: () {},
              widgetFlex: 1,
            ),
            ButtonMockUp(
              width: 100,
              height: 100,
              onPressed: () {},
              widgetFlex: 1,
            ),
          ],
        ),
        SizedBox(
          height: 20,
        )
      ],
    );
  }

  Padding buildBartext() {
    return Padding(
      padding: EdgeInsets.all(6.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      "Codex",
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
                      "hub",
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
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
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
                      height: 50,
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
    );
  }
}
