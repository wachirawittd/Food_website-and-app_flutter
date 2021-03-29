import 'package:flutter/material.dart';
import '../../../../../../constant.dart';

class CardPromotion extends StatelessWidget {
  final List<String> data;
  const CardPromotion({Key key, this.data}) : super(key: key);

  Widget bodyCard({String title, int idx}) => Container(
        alignment: Alignment.center,
        width: 100,
        height: 25,
        margin: EdgeInsets.only(top: idx != 0 ? 10 : 0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(10),
                bottomRight: Radius.circular(10)),
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
            color: kPrimaryColor),
        child: Text(title, style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold
        )),
      );

  @override
  Widget build(BuildContext context) {
    return data != null && data.length > 0
        ? Positioned(
            top: 10,
            left: 0,
            child: Column(
              children: [
                ...data.map((e) {
                  var index = data.indexOf(e);
                  return bodyCard(title: e, idx: index);
                }).toList()
              ],
            ))
        : Text("");
  }
}
