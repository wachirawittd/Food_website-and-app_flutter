import 'package:flutter/material.dart';
import 'package:food_web/constant.dart';

// ignore: must_be_immutable
class FieldCheckBox extends StatelessWidget {
  final bool rememberMe;
  final Function press;
  const FieldCheckBox({
    Key key,
    this.rememberMe,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width > 800 ? 400 : size.width,
      child: Row(
        children: [
          Theme(
            data: ThemeData(unselectedWidgetColor: Colors.white),
            child: Checkbox(
              value: rememberMe,
              checkColor: Colors.green,
              activeColor: Colors.white,
              onChanged: press
            )
          ),
          Text(
            "Remember me",
            style: kLabelStyle,
          )
        ],
      ),
    );
  }
}
