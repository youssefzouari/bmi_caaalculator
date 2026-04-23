import 'package:flutter/material.dart';
//we created this using refactor extract flutter widget

class ReusableCard extends StatelessWidget {
  //const ReusableCard({super.key});   usually for things like animation where your widget moves

  ReusableCard( {
    required this.colour,
    required this.cardchild,
    this.onPress,
  });
  final Color colour;
  final Widget cardchild;
  final VoidCallback? onPress;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardchild,
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
