import 'dart:math';

class CalculatorBrain{

  CalculatorBrain({required this.height , required this.weight});

  final int height;
  final int weight;

  late double _bmi;

  String calculateBMI(){

    _bmi = weight / pow(height/100, 2);
    return _bmi.toStringAsPrecision(4);
  }

  String getResult(){
    if(_bmi >=25){
      return 'Overweight';
    }
    else if (_bmi> 18.5){
      return 'Normal';
    }
    else{
      return 'UnderWeight';
    }
  }

  String getInterpretation(){
    if(_bmi >=25){
      return 'You have a body weight higher than Normal. Try to exercise more !';
    }
    else if (_bmi> 18.5){
      return 'You have a normal body weight. Good Job !';
    }
    else{
      return 'You have a body weight lower than Normal. Try to eat more !';
    }
  }

}