import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CarouselHead extends StatefulWidget {
  CarouselHead({Key key}) : super(key: key);

  @override
  _CarouselHeadState createState() => _CarouselHeadState();
}

class _CarouselHeadState extends State<CarouselHead> {
  List imgArr = [{'img': "images/f-silder-1.jpeg", 'title': "ไก่ผัดเม็ดมะม่วง"},{'img':"images/f-silder-2.jpeg", 'title': "สเต๊กปลาทอด"},{'img':"images/f-silder-3.jpg", 'title': "สเต๊กเนื้อ"}, {'img':"images/f-silder-4.jpeg", 'title': "เคลมบรูเล่"},{'img':"images/f-silder-5.jpg", 'title': "พาร์มิเย่"}];
  final controller = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        margin: const EdgeInsets.only(top: 30),
        width: size.width,
        child: CarouselSlider(
          options: CarouselOptions(
            height: 500,
            aspectRatio: 2.0,
            viewportFraction: 0.8,
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 3),
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            // onPageChanged: callbackFunction,
            scrollDirection: Axis.horizontal,
          ),
          items: imgArr.map((data) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: double.maxFinite,
                  // margin: EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(data['img']),
                    ),
                    boxShadow: [
                      new BoxShadow(
                        color: Colors.grey,
                        blurRadius: 10.0,
                      ),
                    ],
                  ),
                  child: Container(
                    width: size.width,
                    alignment: Alignment.center,
                    color: Colors.grey.withOpacity(0.01),
                    child: Text(
                      data['title'],
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                );
              },
            );
          }).toList(),
        )
      );
  }
}
