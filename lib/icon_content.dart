import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
const labeltextstyle=TextStyle(fontSize: 18.0 ,color: Color(0xFF8D8E98));
class iconcontent extends StatelessWidget {
  iconcontent({required this.iconname,required this.gender});
  final FaIconData iconname;
  final String gender;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FaIcon(iconname , size: 70.0,color: Colors.white,),
        SizedBox(height: 15.0),
        Text(gender,style :labeltextstyle),
      ],
    );
  }
}