import 'package:flutter/material.dart';
import 'package:bmi_caaalculator/constants.dart';
class ButtomButton extends StatelessWidget {
  ButtomButton({required this.onTap,required this.buttonTitle});

  final VoidCallback? onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(top: 10.0),
        padding:  const EdgeInsets.only(bottom: 20.0),
        color: kBottomcontainercolor,
        width: double.infinity,
        height: kBottomcontainerheight,
        child: Center(
          child: Text(
            buttonTitle,
            style: kLArgebuttontextstyle,
          ),
        ),
      ),
    );
  }
}