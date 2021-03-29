import 'package:flutter/material.dart';
import 'package:food_web/constant.dart';

class SignInWithText extends StatelessWidget {
  const SignInWithText({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "- OR -",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 20.0),
        Text(
          "Sign in with",
          style: kLabelStyle,
        )
      ],
    );
  }
}
