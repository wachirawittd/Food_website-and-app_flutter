import 'package:flutter/material.dart';
import 'package:food_web/constant.dart';

class ForgotBtn extends StatelessWidget {
  const ForgotBtn({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width > 800 ? 400 : size.width,
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: () => print("Forgot Password Button Pressed"), 
        child: Padding(
          padding: EdgeInsets.only(right: 0.0),
          child: Text(
            'Forgot Password?',
            style: kLabelStyle,
          ),
        )
      )
    );
  }
}
