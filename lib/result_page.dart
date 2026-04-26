import 'package:bmi_caaalculator/constants.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("BMI CALCULATOR")),
      body: Column(
        children: <Widget>[
          Expanded(flex: 1, child: Text("your result", style: kSmalltextStyle)),
          Expanded(
            flex: 10,
            child: Card(
              color: kPassifreusiablecardcolor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text("Normal", style: TextStyle(color: Colors.green)),
                  Text("22.1", style: TextStyle(fontSize: 50.0)),
                  Text("normal bmi range:", style: kLabeltextstyle),
                  Text('18 - 25 kg/m2'),
                  Text("you have a normal body weight good job"),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ResultPage()),
              );
            },
            child: Container(
              margin: const EdgeInsets.only(top: 10.0),
              padding:  const EdgeInsets.only(bottom: 20.0),
              color: kBottomcontainercolor,
              width: double.infinity,
              height: kBottomcontainerheight,
              child: Center(
                child: Text(
                  "RECALCULATE",
                  style: kLArgebuttontextstyle,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
