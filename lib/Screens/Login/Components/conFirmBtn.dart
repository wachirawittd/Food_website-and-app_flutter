import 'package:flutter/material.dart';
import 'package:food_web/constant.dart';

class ConFirmBtn extends StatelessWidget {
  const ConFirmBtn({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        padding: EdgeInsets.symmetric(vertical: 25.0),
        width: size.width > 800 ? 400 : size.width,
        child: MaterialButton(
          height: 60,
          color: Color(0xFF372930),
          elevation: 5.0,
          padding: EdgeInsets.all(15.0),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
          onPressed: () {
            Navigator.pushNamed(context, '/advice');
          },
          child: Text(
            "LOGIN",
            style: TextStyle(
                color: kPrimaryColor,
                letterSpacing: 1.5,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'OpenSans'),
          ),
        ));
  }
}
