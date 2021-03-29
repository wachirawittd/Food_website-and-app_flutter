import 'package:flutter/material.dart';
import 'package:food_web/Components/app_bar_web.dart';
import '../../../../constant.dart';
import '../fieldSearch.dart';

class HeadHome extends StatefulWidget {
  HeadHome({Key key}) : super(key: key);

  @override
  _HeadHomeState createState() => _HeadHomeState();
}

class _HeadHomeState extends State<HeadHome> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      color: kPrimaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          Padding(
            padding:
                const EdgeInsets.only(top: 0, left: 100, bottom: 0, right: 300),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Are You Hungry ?",
                        style: TextStyle(
                            fontSize: 30, color: Colors.white.withOpacity(1.0)),
                      ),
                      Text(
                        "Don't Wait !",
                        textAlign: TextAlign.left,
                        style: Theme.of(context).textTheme.headline1.copyWith(
                              color: kTextColor,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      Text(
                        "Let start to order food now?",
                        style: TextStyle(
                          fontSize: 20,
                          color: kTextColor,
                        ),
                      ),
                      SizedBox(height: 20),
                      FieldSearch()
                    ],
                  ),
                  Spacer(),
                  Container(
                    child: Image.asset(
                      size.width < 400
                          ? "assets/images/f-home1.png"
                          : "images/f-home1.png",
                      height: 400,
                    ),
                  )
                ])
              ],
            ),
          ),
          Spacer(flex: 2)
        ],
      ),
    );
  }
}
