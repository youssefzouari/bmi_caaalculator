import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                Expanded(child: ReusableCard(colour: Color(0xFF1d1E33))),
                Expanded(child: ReusableCard(colour: Color(0xFF1d1E33)),
                )],
            ),
          ),
          Expanded(
            child: Row(children: <Widget>[Expanded(child: ReusableCard(colour: Color(0xFF1d1E33)))]),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(child: ReusableCard(colour: Color(0xFF1d1E33))),
                Expanded(child: ReusableCard(colour: Color(0xFF1d1E33))),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
//we created this using refactor extract flutter widget
class ReusableCard extends StatelessWidget {
  //const ReusableCard({super.key});   usually for things like animation where your widget moves
  final Color colour;
  ReusableCard( {required this.colour});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
