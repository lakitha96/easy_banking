

import 'package:flutter/material.dart';

import '../constants.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  final Color backgroundColor, foregroundColor, textColor;
  const RoundedButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.backgroundColor = kPrimaryColor,
    this.foregroundColor = kPrimaryLightColor,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
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
          onPressed: onPressed,
          child: (
              Text(
                text,
              )),
        ),
      ),
    );
  }
}