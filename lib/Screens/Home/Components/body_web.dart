import 'package:flutter/material.dart';
import 'package:food_web/Screens/Home/Components/web/body_footer.dart';
import 'package:food_web/Screens/Home/Components/web/header2.dart';
import 'package:food_web/Screens/Home/Components/web/head.dart';
import 'package:food_web/Screens/Home/Components/web/header3.dart';
import 'package:food_web/Screens/Home/Components/web/body.dart';
import 'package:food_web/Screens/Home/Components/web/nav_bottom.dart';

class BodyWebScreen extends StatefulWidget {
  BodyWebScreen({Key key}) : super(key: key);

  @override
  _BodyWebScreenState createState() => _BodyWebScreenState();
}

class _BodyWebScreenState extends State<BodyWebScreen> {
  final controller = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Container(
        width: size.width,
        height: size.height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: size.width,
                    height: size.height * 0.75,
                    child: HeadHome(),
                  ),
                  NavBottom()
                ],
              ),
              Container(
                width: size.width,
                height: size.height * 0.75,
                color: Colors.white,
                child: Header2(),
              ),
              Container(
                width: size.width,
                height: size.height * 0.57,
                color: Colors.white,
                child: Header3(),
              ),
              Container(
                width: size.width,
                height: size.height * 0.57,
                color: Colors.white,
                child: Body(titleMain: "ร้านดัง ใกล้บ้านคุณ", widthRight: size.width * 0.8),
              ),
              Container(
                width: size.width,
                height: size.height * 0.57,
                color: Colors.white,
                child: Body(titleMain: "ร้านดัง ซื้อ 1 แถม 1", widthRight: size.width * 0.805),
              ),
              Container(
                width: size.width,
                height: size.height * 0.57,
                color: Colors.white,
                child: Body(titleMain: "ร้านอร่อยคัดมาให้คุณ", widthRight: size.width * 0.79),
              ),
              Container(
                width: size.width,
                height: size.height * 0.5,
                color: Color(0xFF372930),
                child: BodyFooter(),
              ),
            ],
          ),
        ),
      )
    );
  }
}


