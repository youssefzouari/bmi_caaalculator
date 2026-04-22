import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusiable_card.dart';
import 'icon_content.dart';

const activereusiablecardcolor = Color(0xFF111328);
const passifreusiablecardcolor = Color(0xFF1d1E33);
const bottomcontainerheight = 80.0;
const bottomcontainercolor = Color(0xFFEB1555);

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
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedgender = Gender.male;
                      });
                    },
                    child: ReusableCard(
                      colour: selectedgender == Gender.male
                          ? activereusiablecardcolor
                          : passifreusiablecardcolor,
                      cardchild: iconcontent(
                        iconname: (FontAwesomeIcons.mars),
                        gender: "Male",
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedgender = Gender.female;
                      });
                    },
                    child: ReusableCard(
                      colour: selectedgender == Gender.female
                          ? activereusiablecardcolor
                          : passifreusiablecardcolor,
                      cardchild: iconcontent(
                        iconname: (FontAwesomeIcons.venus),
                        gender: "Female",
                      ),
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
                    colour: passifreusiablecardcolor,
                    cardchild: Column(children: <Widget>[]),
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
                    colour: passifreusiablecardcolor,
                    cardchild: Column(children: <Widget>[]),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: passifreusiablecardcolor,
                    cardchild: Column(children: <Widget>[]),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10.0),
            color: bottomcontainercolor,
            width: double.infinity,
            height: bottomcontainerheight,
          ),
        ],
      ),
    );
  }
}
