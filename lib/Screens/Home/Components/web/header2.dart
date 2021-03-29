import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:food_web/Screens/Home/Components/web/carousel_head.dart';
import 'package:food_web/constant.dart';

class Header2 extends StatefulWidget {
  Header2({Key key}) : super(key: key);

  @override
  _Header2State createState() => _Header2State();
}

class _Header2State extends State<Header2> {
  List imgArr = [{'img': "images/f-silder-1.jpeg", 'title': "ไก่ผัดเม็ดมะม่วง"},{'img':"images/f-silder-2.jpeg", 'title': "สเต๊กปลาทอด"},{'img':"images/f-silder-3.jpg", 'title': "สเต๊กเนื้อ"}, {'img':"images/f-silder-4.jpeg", 'title': "เคลมบรูเล่"},{'img':"images/f-silder-5.jpg", 'title': "พาร์มิเย่"}];
  final controller = PageController(initialPage: 0);

  

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            child: Column(
              children: [
                Image.asset("images/crown.png", width: 30,),
                Text("Golden Food Land", 
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: kPrimaryColor
                  )
                ),
              ],
            ),
          ),
          CarouselHead(),
        ],
      ),
    );
  }
}

