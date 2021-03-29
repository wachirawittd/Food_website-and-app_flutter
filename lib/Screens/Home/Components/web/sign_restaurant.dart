import 'package:flutter/material.dart';

import '../../../../constant.dart';

class SignRestaurant extends StatelessWidget {
  const SignRestaurant({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size =  MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height * 0.8,
      color: Colors.white,
      child: Stack(
        children: [
          Container(
            width: size.width,
            height: size.height * 0.6,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/bg-register.jpeg"),
                    fit: BoxFit.cover)),
          ),
          Positioned(
              bottom: 80,
              right: 70,
              child: Container(
                width: size.width * 0.5,
                height: size.height * 0.5,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "List your restaurant on golden food land",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                    SizedBox(height: 30),
                    Text(
                        "Would you like thousands of new customers to taste your amazing food? So would we!",
                        style: TextStyle(
                            fontSize: 22, color: Colors.grey.withOpacity(.8))),
                    SizedBox(height: 20),
                    Text(
                        "It's simple: we list your menu online, help you process orders, pick them up, and deliver them to hungry pandas - in a heartbeat!",
                        style: TextStyle(
                            fontSize: 22, color: Colors.grey.withOpacity(.8))),
                    SizedBox(height: 20),
                    Text("Interested? Let's start our partnership today!",
                        style: TextStyle(
                            fontSize: 22, color: Colors.grey.withOpacity(.8))),
                    SizedBox(height: 80),
                    Container(
                      alignment: Alignment.centerRight,
                      child: MaterialButton(
                        minWidth: 300,
                        height: 60,
                        color: Color(0xFF372930),
                        elevation: 5.0,
                        padding: EdgeInsets.all(15.0),
                        // shape:
                        //     RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                        onPressed: () {
                          Navigator.pushNamed(context, '/advice');
                        },
                        child: Text(
                          "GET STARTED",
                          style: TextStyle(
                              color: kPrimaryColor,
                              letterSpacing: 1.5,
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'OpenSans'),
                        ),
                      ),
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
