import 'package:flutter/material.dart';
import 'package:food_web/Screens/Home/Components/web/Components/card-menu-advice/title-card.dart';
import 'package:food_web/Screens/Home/Components/web/card-menu.dart';

class Body extends StatefulWidget {
  final String titleMain;
  final double widthRight;
  Body({Key key, this.titleMain, this.widthRight}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      child: Column(
        children: [
          TitleCard(
            title: widget.titleMain,
            widthLeft: size.width * 0.03,
            widthRight: widget.widthRight,
            height: 63,
          ),
          CardMenu(),
        ],
      ),
    );
  }
}
