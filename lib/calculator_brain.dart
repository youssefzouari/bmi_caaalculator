import 'dart:math';
class CalculatorBrain {
  CalculatorBrain({required this.weight,required this.height});
  final int height;
  final int weight;

  double _bmi=22.6;
  String calculateBmi(){
     _bmi = weight/pow(height/100,2 );
   return _bmi.toStringAsFixed(1);
  }
  String getresult(){
    if(_bmi >= 25){
      return "Overweight";
    }
    else if(_bmi>18.5){
      return "Normal";
    }
    else{
      return "underweight";
    }
  }String getInterpretation(){
    if(_bmi >= 25){
      return "you/'re a fat piece of shit";
    }
    else if(_bmi>18.5){
      return "your bmi is good but that doesn't mean you are healthy bro";
    }
    else{
      return "are you poor or something do you want some food";
    }
  }
}