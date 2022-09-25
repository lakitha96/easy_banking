import 'package:easy_banking/screens/login/components/text_field_container.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged? onValueChanged;
  const RoundedPasswordField({
    Key? key,
    this.onValueChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
        child: TextField(
          obscureText: true,
          onChanged: onValueChanged,
          decoration: const InputDecoration(
            hintText: "Password",
            icon: Icon(Icons.lock, color: kPrimaryColor),
            suffixIcon: Icon(Icons.visibility, color: kPrimaryColor),
            border: InputBorder.none,
          ),
        ));
  }
}
