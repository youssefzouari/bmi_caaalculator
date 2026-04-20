import 'package:flutter/material.dart';
//we created this using refactor extract flutter widget

class ReusableCard extends StatelessWidget {
  //const ReusableCard({super.key});   usually for things like animation where your widget moves

  ReusableCard({required this.colour, required this.cardchild});
  final Color colour;
  final Widget cardchild;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardchild,
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}