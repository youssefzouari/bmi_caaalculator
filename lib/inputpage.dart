import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusiable_card.dart';
import 'icon_content.dart';
import 'constants.dart';
import 'package:bmi_caaalculator/result_page.dart';

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
                            activeTrackColor: Theme.of(
                              context,
                            ).colorScheme.primary,
                            inactiveTrackColor: Theme.of(
                              context,
                            ).colorScheme.primary.withValues(alpha: 0.3),
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
                            RoundIconButton(
                              faIcon: FontAwesomeIcons.minus,
                              onPress: () {
                                setState(() {
                                  weight--;
                                });
                              },
                            ),
                            Text(weight.toString(), style: khugeTextStyle),
                            RoundIconButton(
                              faIcon: FontAwesomeIcons.plus,
                              onPress: () {
                                setState(() {
                                  weight++;
                                });
                              },
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
                            RoundIconButton(
                              faIcon: FontAwesomeIcons.minus,
                              onPress: () {
                                setState(() {
                                  age--;
                                });
                              },
                            ),
                            Text(age.toString(), style: khugeTextStyle),
                            RoundIconButton(
                              faIcon: FontAwesomeIcons.plus,
                              onPress: () {
                                setState(() {
                                  age++;
                                });
                              },
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
                  "CALCULATE",
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

class RoundIconButton extends StatelessWidget {
  RoundIconButton({required this.faIcon, required this.onPress});
  final FaIconData faIcon;
  final VoidCallback? onPress;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: FaIcon(faIcon),
      shape: CircleBorder(),
      fillColor: Color(0xFF2d3559),
      constraints: const BoxConstraints.tightFor(width: 40.0, height: 40.0),
      elevation: 6,
      onPressed: onPress,
    );
  }
}
