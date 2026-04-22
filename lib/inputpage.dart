import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusiable_card.dart';
import 'icon_content.dart';
import 'constants.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  //Color malecardcolor = passifreusiablecardcolor;
  //Color femalecardcolor = passifreusiablecardcolor;
  //void updatecolor(Gender gender) {
  //  if (gender == Gender.male) {
  //    femalecardcolor=passifreusiablecardcolor;
  //    if (malecardcolor == passifreusiablecardcolor) {
  //      malecardcolor = activereusiablecardcolor;
  //    } else {
  //      malecardcolor = passifreusiablecardcolor;
  //    }
  //
  //  }
  //  if (gender == Gender.female) {
  //    malecardcolor=passifreusiablecardcolor;
  //    if (femalecardcolor == passifreusiablecardcolor) {
  //      femalecardcolor = activereusiablecardcolor;
  //    } else {
  //      femalecardcolor = passifreusiablecardcolor;
  //    }
  //  }
  //}
  Gender? selectedgender;
  int height = 180;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
        titleTextStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedgender = Gender.male;
                      });
                    },
                    colour: selectedgender == Gender.male
                        ? kActivereusiablecardcolor
                        : kPassifreusiablecardcolor,
                    cardchild: iconcontent(
                      iconname: (FontAwesomeIcons.mars),
                      gender: "Male",
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedgender = Gender.female;
                      });
                    },
                    colour: selectedgender == Gender.female
                        ? kActivereusiablecardcolor
                        : kPassifreusiablecardcolor,
                    cardchild: iconcontent(
                      iconname: (FontAwesomeIcons.venus),
                      gender: "Female",
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: kPassifreusiablecardcolor,
                    cardchild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[

                        Text("HEIGHT", style: kLabeltextstyle),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: <Widget>[

                            Text(height.toString(), style: khugeTextStyle),
                            Text("cm", style: kSmalltextStyle),


                          ],
                        ),
                        Slider(
                          value: height.toDouble(),
                          min: 120,
                          max: 220,
                          onChanged: (double newvalue) {
                            setState(() {
                              height=newvalue.round();
                            });
                          },),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: kPassifreusiablecardcolor,
                    cardchild: Column(children: <Widget>[]),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: kPassifreusiablecardcolor,
                    cardchild: Column(children: <Widget>[]),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10.0),
            color: kBottomcontainercolor,
            width: double.infinity,
            height: kBottomcontainerheight,
          ),
        ],
      ),
    );
  }
}
