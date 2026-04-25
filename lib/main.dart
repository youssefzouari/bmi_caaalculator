import 'package:flutter/material.dart';
import 'inputpage.dart';


void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF1d1E33), // your pink
          brightness: Brightness.dark,
        ),
        scaffoldBackgroundColor: const Color(0xFF090C22),
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Colors.white),
          bodySmall: TextStyle(color: Colors.white),
          bodyMedium: TextStyle(color: Colors.white),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF090C22),
          elevation: 8,
          shadowColor: Colors.black,
          surfaceTintColor: Colors.transparent, // removes M3 tint
        ),
      ),

      home: InputPage(),
    );
  }
}
