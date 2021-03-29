import 'package:flutter/material.dart';

class MTimeAdvice extends StatelessWidget {
  final String time;
  const MTimeAdvice({Key key, this.time}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
        left: 10,
        bottom: 10,
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
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
          width: 80,
          height: 30,
          // child: Text(time + " " + "นาที"),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(width: 2),
              Icon(
                Icons.timer,
              ),
              SizedBox(width: 3),
              Text(time + " " + "นาที")
            ]
          )
        ));
  }
}
