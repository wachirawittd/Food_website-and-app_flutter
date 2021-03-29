import 'package:flutter/material.dart';
import 'package:food_web/constant.dart';

class NavBottom extends StatefulWidget {
  NavBottom({Key key}) : super(key: key);

  @override
  _NavBottomState createState() => _NavBottomState();
}

class _NavBottomState extends State<NavBottom> {
  @override
  Widget build(BuildContext context) {
    Size size =  MediaQuery.of(context).size;
    return Positioned(
      left: 70,
      right: 70,
      bottom: -38,
      child: Container(
          padding: const EdgeInsets.all(0),
          decoration: BoxDecoration(
            border: Border.all(width: 0, color: kPrimaryColor),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(5), topRight: Radius.circular(5)),
            color: Colors.white,
            boxShadow: [
              new BoxShadow(
                color: kPrimaryColor,
                blurRadius: 10.0,
              )
            ],
          ),
          alignment: Alignment.topCenter,
          width: size.width * 0.5,
          height: size.height * 0.08,
          child: ClipPath(
            clipper: ClipperStack(),
            child: Container(color: kPrimaryColor, height: 25, width: 40),
          )),
    );
  }
}


class ClipperStack extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.moveTo(0.0, 0.0);
    path.lineTo(0.0, size.height -25);
    path.lineTo((size.width / 2 )-20, size.height-25);


    path.lineTo(size.width / 2, size.height);


    path.lineTo((size.width / 2)+20, size.height-25);
    path.lineTo(size.width, size.height-25);


    path.lineTo(size.width, 0.0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
