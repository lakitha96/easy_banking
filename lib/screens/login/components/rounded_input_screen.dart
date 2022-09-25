import 'package:easy_banking/screens/login/components/text_field_container.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData iconData;
  final ValueChanged? onValueChanged;
  const RoundedInputField({
    Key? key,
    required this.hintText,
    this.iconData = Icons.person,
    required this.onValueChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onValueChanged,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
            icon: Icon(
              iconData,
              color: kPrimaryColor,
            ),
            hintText: hintText,
            border: InputBorder.none
        ),
      ),
    );
  }
}