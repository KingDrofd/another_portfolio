import 'package:flutter/material.dart';
import 'package:proffesional_portfolio/main.dart';
import 'package:proffesional_portfolio/widgets/custom_button_card.dart';

class BuildCodexGridButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CustomButtonCard(
          onPressed: () {
            print("object");
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return MyApp();
              },
            ));
          },
          cardTitle: "Commander",
          cardAdditionalInfo: "Regad Abdeallah",
          width: double.maxFinite,
        ),
        Row(
          children: [
            Expanded(
              child: CustomButtonCard(
                onPressed: () {},
                cardTitle: "Skills",
                height: 150,
              ),
            ),
            Expanded(
              child: CustomButtonCard(
                onPressed: () {},
                cardTitle: "Projects",
                height: 150,
              ),
            ),
            Expanded(
              child: CustomButtonCard(
                onPressed: () {},
                cardTitle: "Blog",
                height: 150,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
