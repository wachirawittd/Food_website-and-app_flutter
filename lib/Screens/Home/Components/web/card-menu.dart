import 'package:flutter/material.dart';
import 'package:food_web/Screens/Home/Components/web/Components/card-menu-advice/bg.dart';
import 'package:food_web/Screens/Home/Components/web/Components/card-menu-advice/c-promotion.dart';
import 'package:food_web/Screens/Home/Components/web/Components/card-menu-advice/i-favorite.dart';
import 'package:food_web/Screens/Home/Components/web/Components/card-menu-advice/m-time.dart';
import 'package:food_web/constant.dart';

class CardMenu extends StatefulWidget {
  CardMenu({Key key}) : super(key: key);

  @override
  _CardMenuState createState() => _CardMenuState();
}

class _CardMenuState extends State<CardMenu> {
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
    return Flexible(
        child: Container(
            width: size.width,
            height: size.height * 0.45,
            margin: EdgeInsets.only(right: 20, left: 20, bottom: 10),
            child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ...imgArr.map((e) {
                      return MaterialButton(
                        onPressed: () {},
                        child: Container(
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                boxShadow: [
                                  new BoxShadow(
                                    color: Colors.grey.withOpacity(.5),
                                    blurRadius: 10.0, // soften the shadow
                                    spreadRadius: 0.0, //extend the shadow
                                    offset: Offset(
                                      5.0, // Move to right 10  horizontally
                                      5.0, // Move to bottom 10 Vertically
                                    ),
                                  ),
                                ],
                                color: Colors.white),
                            margin: const EdgeInsets.only(right: 10),
                            width: size.width * 0.2,
                            height: size.width * 0.25,
                            child: Column(
                              children: [
                                Stack(
                                  children: [
                                    BgAdvice(img: e['img']),
                                    MTimeAdvice(time: e['time']),
                                    IconFavorite(
                                        splashColor: Colors.pink,
                                        icons: Icon(
                                          Icons.favorite,
                                          color: Colors.pink,
                                          size: 20,
                                        )),
                                    CardPromotion(data: e['promotion'])
                                  ],
                                ),
                                Container(
                                  width: size.width,
                                  padding: EdgeInsets.only(
                                      top: 10, right: 10, left: 10, bottom: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        e['title'],
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Row(
                                        children: [
                                          Icon(Icons.star,
                                              color: kPrimaryColor),
                                          SizedBox(width: 5),
                                          Text("4.3"),
                                          SizedBox(width: 5),
                                          Text("(547 คน)" + " " + "Reviews",
                                              style: TextStyle(
                                                  color: Colors.grey
                                                      .withOpacity(.8))),
                                        ],
                                      ),
                                      Text(
                                        "It is a long established fact that a reader will be when distracted by the vreadable content of a page when at looking at its layout. content of a page when at looking It is a long established fact that a reader will be when distracted by the vreadable the content of a page when looking at its layout.",
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 3,
                                        style: TextStyle(fontSize: 11),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: size.width,
                                  padding: EdgeInsets.only(right: 10, left: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        width: size.width * 0.095,
                                        height: 30,
                                        alignment: Alignment.centerLeft,
                                        decoration: BoxDecoration(
                                          border: Border(
                                              right: BorderSide(
                                                  color: kPrimaryColor,
                                                  width: 1)),
                                        ),
                                        child: Row(
                                          children: [
                                            Text(
                                                '${e['leastMoney']}' +
                                                    " " +
                                                    "-" +
                                                    " " +
                                                 '${e['mostMoney']}',
                                                style: TextStyle(fontSize: 18)
                                            ),
                                            SizedBox(width: 1),
                                            Icon(
                                              Icons.attach_money,
                                              size: 30,
                                              color: kPrimaryColor,
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        alignment: Alignment.centerLeft,
                                        height: 30,
                                        child: Row(
                                          children: [
                                            Text(
                                              "Read more",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            )),
                      );
                    }).toList(),
                  ],
                ))));
  }
}
