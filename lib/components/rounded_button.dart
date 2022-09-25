

import 'package:flutter/material.dart';

import '../constants.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Function press;
  final Color backgroundColor, foregroundColor, textColor;
  const RoundedButton({
    Key? key,
    required this.text,
    required this.press,
    this.backgroundColor = kPrimaryColor,
    this.foregroundColor = kPrimaryLightColor,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child:
        TextButton(
          style: TextButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
              backgroundColor: backgroundColor,
              foregroundColor: foregroundColor,
              textStyle: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: textColor,
              )
          ),
          onPressed: (){
            press;
          },
          child: (
              Text(
                text,
              )),
        ),
      ),
    );
  }
}