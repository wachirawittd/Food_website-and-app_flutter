import 'package:flutter/material.dart';
import 'package:food_web/constant.dart';

class FieldEmail extends StatefulWidget {
  FieldEmail({Key key}) : super(key: key);

  @override
  _FieldEmailState createState() => _FieldEmailState();
}

class _FieldEmailState extends State<FieldEmail> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Email',
          style: kLabelStyle,
        ),
        SizedBox(height: 10),
        Container(
          width: size.width > 800 ? 400 : size.width,
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          height: 60,
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'OpenSans'
            ),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(Icons.email, color: Colors.white),
                hintText: "Enter your Email",
                hintStyle: kHintTextStyle),
          ),
        )
      ],
    );
  }
}
