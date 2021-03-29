import 'package:flutter/material.dart';
import 'package:food_web/constant.dart';

class FieldSearch extends StatefulWidget {
  FieldSearch({Key key}) : super(key: key);

  @override
  _FieldSearchState createState() => _FieldSearchState();
}

class _FieldSearchState extends State<FieldSearch> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 20),
        Container(
          width: size.width > 800 ? 450 : size.width,
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationSearchStyle,
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
                prefixIcon: Icon(Icons.search, color: Colors.white),
                hintText: "Enter your food...",
                hintStyle: kHintTextStyle),
          ),
        )
      ],
    );
  }
}
