import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:food_web/constant.dart';

class CardNation extends StatefulWidget {
  @override
  _CardNationState createState() => _CardNationState();
}

class _CardNationState extends State<CardNation> {
  final globalKey = GlobalKey<ScaffoldState>();
  Offset pointer = Offset(300, 300);
  Color backgroundColor = Colors.white;
  int mainItemHover = 0;
  List imgArr = [
    {
      'img': "images/f-silder-1.jpeg",
      'type': ['อาหารอีสาน', 'อาหารตามสั่ง'],
      'title': "Isao",
      "time": "25",
      "promotion": ["1 ฟรี 1", "ส่งฟรี"],
      "mostMoney": 120,
      "leastMoney": 40,
    },
    {
      'img': "images/f-silder-2.jpeg",
      'type': ['อาหารตามสั่ง'],
      'title': "Kosirae",
      "time": "30",
      "promotion": ["ลด 10%"],
      "mostMoney": 150,
      "leastMoney": 45,
    },
    {
      'img': "images/f-silder-3.jpg",
      'type': ['อาหารอีจีน'],
      'title': "Katsushin",
      "time": "40",
      "mostMoney": 120,
      "leastMoney": 50,
    },
    {
      'img': "images/f-silder-4.jpeg",
      'title': "โกเบ๊นซ์ ข้าวต้มแห้งภูเก็ตภูเก็ต",
      "time": "20",
      "promotion": ["ลด 80%"],
      "mostMoney": 180,
      "leastMoney": 50,
    },
    {
      'img': "images/f-silder-5.jpg",
      'type': ['อาหารอีไทย'],
      'title': "เรือนไทยกุ้งเผา",
      "time": "50",
      "promotion": ["ร้านแนะนำ"],
      "mostMoney": 120,
      "leastMoney": 35,
    },
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: MouseRegion(
      cursor: SystemMouseCursors.none,
      onHover: (eve) {
        setState(() {
          pointer = eve.position;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 500),
        child: InkWell(
          onTap: () {},
          onHover: (v) {
            setState(() {
              mainItemHover = v ? 1 : 0;
              backgroundColor = v ? Color(0xFF372930) : Colors.white;
            });
          },
          child: AnimatedDefaultTextStyle(
            duration: Duration(milliseconds: 200),
            child: Container(
              width: size.width * 0.2,
              height: size.width * 0.25,
              padding: EdgeInsets.all(0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("images/f-silder-1.jpeg"),
                  ),
                  boxShadow: [
                    mainItemHover == 1 ? activeBoxShadow() : defaultBoxShadow()
                  ],
              ),
              child: Stack(
                children: [
                  mainItemHover == 1 ? 
                    Positioned(
                      bottom: -80,
                      left: -20,
                      child: Text(
                        "B",
                        style: TextStyle(
                          fontSize: 300,
                          color: kPrimaryColor.withOpacity(.9)
                        ),
                      )
                    )
                  : Text(""),
                  Positioned(
                    bottom: 10,
                    left: 10,
                    child: Text(
                      "Bankok"
                    )
                  ),
                  mainItemHover == 1 ? 
                    Positioned(
                      bottom: 10,
                      right: 10,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: kPrimaryColor,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(.5),
                              blurRadius: 10.0, // soften the shadow
                              spreadRadius: 0.0, //extend the shadow
                              offset: Offset(
                                10.0, // Move to right 10  horizontally
                                10.0, // Move to bottom 10 Vertically
                              ),
                            )
                          ],
                        ),
                        child: Icon(
                          Icons.arrow_forward,
                          color: Color(0xFF241424),
                          size: 50,
                        )
                      ),
                    )
                  : Text(""),
                ]
              ),
            ),
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w900,
                fontSize: 40
            ),
          ),
        ),
      ),
    ));
  }
}

BoxShadow defaultBoxShadow() {
  return BoxShadow(
    color: Colors.grey.withOpacity(.5),
    blurRadius: 5.0, // soften the shadow
    spreadRadius: 0.0, //extend the shadow
    offset: Offset(
      3.0, // Move to right 10  horizontally
      3.0, // Move to bottom 10 Vertically
    ),
  );
}

BoxShadow activeBoxShadow() {
  return BoxShadow(
    color: Colors.grey.withOpacity(.5),
    blurRadius: 10.0, // soften the shadow
    spreadRadius: 0.0, //extend the shadow
    offset: Offset(
      8.0, // Move to right 10  horizontally
      8.0, // Move to bottom 10 Vertically
    ),
  );
}
