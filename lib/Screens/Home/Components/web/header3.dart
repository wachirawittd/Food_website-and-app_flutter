import 'package:flutter/material.dart';
import 'package:food_web/Screens/Home/Components/web/Components/card-menu-advice/title-card.dart';
import 'package:food_web/Screens/Home/Components/web/card-menu.dart';
import 'package:food_web/constant.dart';

class Header3 extends StatefulWidget {
  Header3({Key key}) : super(key: key);

  @override
  _Header3State createState() => _Header3State();
}

class _Header3State extends State<Header3> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
       width: size.width,
       height: size.height,
       child: Column(
         children: [
            TitleCard(
              title: "เมนูสำหรับคุณ", 
              icon: Icon(
                Icons.star, 
                color: kPrimaryColor
              ),
              widthLeft: size.width * 0.43,
              widthRight: size.width * 0.43,
              height: 65,
            ),
            CardMenu(),
            // TitleCard(
            //   title: "ร้านดัง ใกล้บ้านคุณ", 
            //   widthLeft: size.width * 0.03,
            //   widthRight: size.width * 0.805,
            //   height: 63,
            // ),
            // CardMenu(),
         ],
       ),
    );
  }
}