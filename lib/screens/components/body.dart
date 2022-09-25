import 'package:easy_banking/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../components/rounded_button.dart';
import '../login/login_screen.dart';
import 'background.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "Easy Banking",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(height: size.height * 0.04),
            SvgPicture.asset("assets/icons/chat.svg",
                height: size.height * 0.43),
            SizedBox(height: size.height * 0.04),
            RoundedButton(
              text: "LOGIN",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
              foregroundColor: Colors.white,
            ),
            RoundedButton(
              text: "SIGNUP",
              onPressed: () {},
              backgroundColor: kPrimaryLightColor,
              foregroundColor: Colors.black,
              textColor: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
