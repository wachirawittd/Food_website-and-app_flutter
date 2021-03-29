import 'package:flutter/material.dart';
import '../../../../../../constant.dart';

class TitleCard extends StatelessWidget {
  final String title;
  final Icon icon;
  final double widthRight;
  final double widthLeft;
  final double height;
  const TitleCard(
      {Key key, this.title, this.icon, this.widthRight, this.widthLeft, this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      padding: EdgeInsets.only(right: 20, left: 20, bottom: 20),
      child: Row(children: <Widget>[
        Container(
            width: widthLeft,
            alignment: Alignment.center,
            height: height,
            margin: EdgeInsets.only(right: 15),
            child: Divider(
              color: Colors.black,
            )),
        Container(
          alignment: Alignment.center,
          height: height,
          child: Column(
            children: [
              icon != null ? icon : Text(""),
              Text(title,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: kTextColor,
                  )),
            ],
          ),
        ),
        Container(
            width: widthRight,
            height: height,
            alignment: Alignment.center,
            margin: EdgeInsets.only(left: 15),
            child: Divider(
              color: Colors.black,
            )),
      ]),
    );
  }
}
