import 'package:bmi_wizard/components/bottom_button.dart';
import 'package:bmi_wizard/screens/input_page.dart';
import 'package:bmi_wizard/components/reusable_card.dart';
import 'package:flutter/material.dart';
import '../constants.dart';

class ResultsPage  extends StatelessWidget {

  ResultsPage({required this.resultBMI , required this.resultText ,required this.resultInterpretation});

  final String resultBMI;
  final String resultText;
  final String resultInterpretation;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,

        children: [
          Expanded(child: Container(
            padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text('Your Result', style: kLargeTitleStyle,),
            ),
          ),
          Expanded(
            flex: 5,
              child: ReusableCard(
                colour: kActiveCardColor,
                cardChild: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(resultText.toUpperCase(), style: kResultTextStyle,),
                      Text(resultBMI, style: kBMITextStyle,),
                      Text( resultInterpretation ,style: kBodyTextStyle, textAlign: TextAlign.center,)
                    ],
                  ),
                ),
              )
          ),

          BottomButton(title: "Re-Calculate", onPress: (){
            Navigator.of(context).pop(context);
          })
        ],
      )
    );
  }
}
