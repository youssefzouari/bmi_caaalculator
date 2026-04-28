import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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