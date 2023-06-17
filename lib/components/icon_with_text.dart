import 'package:flutter/material.dart';
import '../constants.dart';


class IconwithText extends StatelessWidget {

  IconwithText({required this.icon , required this.text});

  final IconData icon ;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: kIconSize,
        ),
        SizedBox(
          height: kGap,
        ),
        Text(
          text,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
