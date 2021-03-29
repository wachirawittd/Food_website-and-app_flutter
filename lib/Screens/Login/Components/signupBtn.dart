import 'package:flutter/material.dart';

class SignupBtn extends StatelessWidget {
  final Function press;
  const SignupBtn({Key key, this.press}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: RichText(
          text: TextSpan(children: [
        TextSpan(
            text: 'Don\'t have an Account? ',
            style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.w400)),
        TextSpan(
            text: 'Sign Up',
            style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.bold)),
      ])),
    );
  }
}
