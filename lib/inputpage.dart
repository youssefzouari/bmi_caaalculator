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
  int weight = 74;
  int age = 24;
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
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                            thumbShape: RoundSliderThumbShape(
                              enabledThumbRadius: 15.0,
                            ),
                            overlayShape: RoundSliderOverlayShape(
                              overlayRadius: 30,
                            ),
                            thumbColor: Theme.of(context).colorScheme.primary,
                            activeTrackColor: Theme.of(context).colorScheme.primary,
                            inactiveTrackColor:
                            Theme.of(context).colorScheme.primary.withValues(alpha: 0.3)

                          ),
                          child: Slider(
                            value: height.toDouble(),
                            min: 120,
                            max: 220,
                            onChanged: (double newvalue) {
                              setState(() {
                                height = newvalue.round();
                              });
                            },
                          ),
                        ),
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
                    cardchild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: <Widget>[
                        Text("Weight", style: kLabeltextstyle),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton.small(
                              shape: CircleBorder(),
                              backgroundColor: Color(0xFF2d3559),
                              onPressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                              child: (FaIcon(
                                FontAwesomeIcons.minus,
                                color: Colors.white,
                              )),
                            ),
                            Text(weight.toString(), style: khugeTextStyle),
                            FloatingActionButton.small(
                              shape: CircleBorder(),
                              backgroundColor: Color(0xFF2d3559),
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                              child: (FaIcon(
                                FontAwesomeIcons.plus,
                                color: Colors.white,
                              )),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: kPassifreusiablecardcolor,
                    cardchild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: <Widget>[
                        Text("Age", style: kLabeltextstyle),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [

                            FloatingActionButton.small(
                              shape: CircleBorder(),
                              backgroundColor: Color(0xFF2d3559),
                              onPressed: () {
                                setState(() {
                                  age--;
                                });
                              },
                              child: (FaIcon(
                                FontAwesomeIcons.minus,
                                color: Colors.white,
                              )),
                            ),
                            Text(age.toString(), style: khugeTextStyle),
                            FloatingActionButton.small(
                              shape: CircleBorder(),
                              backgroundColor: Color(0xFF2d3559),
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                              child: (FaIcon(
                                FontAwesomeIcons.plus,
                                color: Colors.white,
                              )),
                            ),
                          ],
                        ),
                      ],
                    ),
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
