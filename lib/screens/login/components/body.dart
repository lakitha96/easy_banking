import 'package:easy_banking/components/rounded_button.dart';
import 'package:easy_banking/screens/login/components/already_have_account_check.dart';
import 'package:easy_banking/screens/login/components/background.dart';
import 'package:easy_banking/screens/login/components/rounded_input_screen.dart';
import 'package:easy_banking/screens/login/components/rounded_password_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text("LOGIN",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
          SizedBox(height: size.height * 0.04),
          SvgPicture.asset("assets/icons/login.svg",
              height: size.height * 0.33),
          SizedBox(height: size.height * 0.04),
          RoundedInputField(
            hintText: "Your Email",
            onValueChanged: (value) {},
          ),
          RoundedPasswordField(
            onValueChanged: (value) {},
          ),
          RoundedButton(text: "Login", onPressed: () {}),
          SizedBox(height: size.height * 0.04),
          AlreadyHaveAccountCheck(
            onPressed: () {}
          )
        ],
      ),
    );
  }
}