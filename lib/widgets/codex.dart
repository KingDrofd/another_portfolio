import 'package:flutter/material.dart';

import 'package:proffesional_portfolio/main.dart';

import 'package:proffesional_portfolio/widgets/custom_button_card.dart';

import 'package:proffesional_portfolio/widgets/custom_header.dart';

class Codex extends StatelessWidget {
  const Codex({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomHeader(
                title: "Codex",
                subTitle: "Hub",
              ),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: BuildCodexGridButtons(),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class BuildCodexGridButtons extends StatelessWidget {
  const BuildCodexGridButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CustomButtonCard(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return MyApp();
              },
            ));
          },
          cardTitle: "Commander",
          cardAdditionalInfo: "Regad Abdellah",
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
