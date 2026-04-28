import 'package:bmi_caaalculator/constants.dart';
import 'package:bmi_caaalculator/reusiable_card.dart';
import 'package:flutter/material.dart';
import 'package:bmi_caaalculator/buttombutton.dart';

class ResultPage extends StatelessWidget {
  ResultPage({
    required this.bmiresult,
    required this.interpretation,
    required this.resulttext,
  });
  final String bmiresult;
  final String resulttext;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("BMI CALCULATOR")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsetsDirectional.all(15.0),
              child: Text("your result", style: khugeTextStyle),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kPassifreusiablecardcolor,
              cardchild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(resulttext, style: kResulttextstyle),
                  Text(bmiresult, style: khugeTextStyle),
                  Text(
                    interpretation,
                    style: kbodytextstyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          ButtomButton(
            buttonTitle: "RECALCULATE",
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
