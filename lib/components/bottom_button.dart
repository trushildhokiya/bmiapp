import 'package:flutter/material.dart';
import '../constants.dart';


class BottomButton extends StatelessWidget {

  BottomButton({required this.title ,required this.onPress});

  final String title;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: Center(child: Text(title, style: kLargeButtonStyle,),),
        margin: EdgeInsets.only(top: 15.0),
        width: double.infinity,
        height: kBottomContainerHeight,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: kBottomContainerColor,
        ),
      ),
    );
  }
}
