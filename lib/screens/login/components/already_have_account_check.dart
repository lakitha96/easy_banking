import 'package:flutter/material.dart';

import '../../../constants.dart';

class AlreadyHaveAccountCheck extends StatelessWidget {
  final bool login;
  final void Function()? onPressed;

  const AlreadyHaveAccountCheck({
    Key? key,
    this.login = true,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(login ? "Don't have an account? " : "Already have an Account ?",
            style: const TextStyle(color: kPrimaryColor)),
        GestureDetector(
            onTap: onPressed,
            child: Text(login ? "Sign Up " : "Log In",
                style: const TextStyle(
                    color: kPrimaryColor, fontWeight: FontWeight.bold)))
      ],
    );
  }
}
