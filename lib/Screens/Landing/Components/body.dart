import 'package:flutter/material.dart';
import 'package:food_web/constant.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Food Land".toUpperCase(),
            style: Theme.of(context).textTheme.headline1.copyWith(
                color: size.width < 400 ? Colors.white : kTextColor,
                fontWeight: FontWeight.bold),
          ),
          Text(
            size.width < 400
                ? "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters"
                : "It is a long established fact that a reader will be distracted \nby the readable content of a page when looking at its \nlayout. The point of using Lorem Ipsum is that it has a \nmore-or-less normal distribution of letters",
            // "It is a long established fact that a reader will be distracted \nby the readable content of a page when looking at its \nlayout. The point of using Lorem Ipsum is that it has a \nmore-or-less normal distribution of letters"
            style: TextStyle(
                fontSize: size.width < 400 ? 16 : 21,
                color: Colors.white.withOpacity(0.8)),
          ),
          size.width < 400 ? SizedBox(height: 80) : SizedBox(height: 0),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/login');
            },
            child: FittedBox(
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 20),
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: Color(0xFF372930),
                    borderRadius: BorderRadius.circular(34)),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      height: 38,
                      width: 38,
                      decoration: BoxDecoration(
                        color: kPrimaryColor,
                        shape: BoxShape.circle,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color(0xFF372930), shape: BoxShape.circle),
                      ),
                    ),
                    SizedBox(width: 15),
                    Text(
                      "Get Started".toUpperCase(),
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 19),
                    ),
                    SizedBox(width: 15),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
