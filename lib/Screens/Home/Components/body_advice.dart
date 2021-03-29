import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:food_web/Screens/Home/Components/web/body_footer.dart';
import 'package:food_web/Screens/Home/Components/web/card_nation.dart';
import 'package:food_web/Screens/Home/Components/web/head.dart';
import 'package:food_web/Screens/Home/Components/web/nav_bottom.dart';
import 'package:food_web/Screens/Home/Components/web/sign_restaurant.dart';

class BodyAdviceScreen extends StatefulWidget {
  BodyAdviceScreen({Key key}) : super(key: key);

  @override
  _BodyAdviceScreenState createState() => _BodyAdviceScreenState();
}

class _BodyAdviceScreenState extends State<BodyAdviceScreen> {
  final controller = PageController(initialPage: 0);
  final GlobalKey _key = GlobalKey();
  bool isHoverCard = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
        child: Container(
      width: size.width,
      height: size.height,
      color: Colors.white,
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
              height: size.height * 0.07,
              margin: EdgeInsets.only(bottom: 20, left: size.width * 0.2),
              alignment: Alignment.bottomLeft,
              child: Text(
                'สมัครเป็นสมาชิกสำหรับร้านอาหารของคุณ',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            SignRestaurant(),
            CardNation(),
            SizedBox(height: 20),
            Container(
              width: size.width,
              height: size.height * 0.5,
              color: Color(0xFF372930),
              child: BodyFooter(),
            ),
          ],
        ),
      ),
    ));
  }
}
