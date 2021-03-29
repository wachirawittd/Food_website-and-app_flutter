import 'package:flutter/material.dart';

import '../../../../constant.dart';

class BodyFooter extends StatefulWidget {
  BodyFooter({Key key}) : super(key: key);

  @override
  _BodyFooterState createState() => _BodyFooterState();
}

class _BodyFooterState extends State<BodyFooter> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
       width: size.width,
       height: size.height,
       padding: EdgeInsets.all(50),
       child: Row(
         children: [
           Container(
             alignment: Alignment.topLeft,
             width: size.width * 0.2,
             decoration: BoxDecoration(
                border: Border(
                  right: BorderSide(
                      color: kPrimaryColor,
                      width: 3
                  )
                ),
             ),
             child: Row(
               children: [
                 Column(
                   children: [
                     Text(
                        "G O L D E N \n" + "F O O D \n" + "L A N D",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold
                        ),
                     ),
                     Text("by" + " " + "Urek Mazino", 
                        style: TextStyle(
                          color: Colors.white,
                        )
                     )
                   ],
                 )
               ],
             ),
           ),
           Container(
             width: size.width * 0.15,
             padding: EdgeInsets.only(right: 10,left: 30, top: 2),
             alignment: Alignment.topLeft,
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Text(
                    "EXPLORE",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Home",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "About",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Pricing",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Contact",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18
                    ),
                  ),
               ],
             )
           ),
           Container(
             width: size.width * 0.18,
             padding: EdgeInsets.only(right: 10,left: 30, top: 2),
             alignment: Alignment.topLeft,
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Text(
                    "SUPPORT",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Contact Us",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "FAQ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Downloads",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Locate A Dealer",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18
                    ),
                  ),
                   SizedBox(height: 10),
                   Text(
                      "Product Registration",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18
                      ),
                   ),
                   SizedBox(height: 10),
                   Text(
                      "Spare Parts",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18
                      ),
                   ),
               ],
             )
           ),
           Container(
             width: size.width * 0.18,
             padding: EdgeInsets.only(right: 10,left: 30, top: 2),
             alignment: Alignment.topLeft,
             decoration: BoxDecoration(
                border: Border(
                  right: BorderSide(
                      color: kPrimaryColor,
                      width: 3
                  )
                ),
             ),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Text(
                    "COMMUNITY",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Community Central",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Support",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Downloads",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Help",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18
                    ),
                  ),
                   SizedBox(height: 10),
                   Text(
                      "Do Not Sell My info",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18
                      ),
                   ),
               ],
             )
           ),
           Container(
             width: size.width * 0.21,
             padding: EdgeInsets.only(right: 10,left: 30),
             alignment: Alignment.topLeft,
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Container(
                   alignment: Alignment.topCenter,
                   child: Text(
                      "VISIT",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                 ),
                  SizedBox(height: 20),
                  Container(
                    alignment: Alignment.topCenter,
                    child: Text(
                      "Envoy So. California 34 Tesla, \nSte 100 Irvine, Ca, USA 92618",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    alignment: Alignment.topCenter,
                    child: Text(
                      "SOCIAL",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Image(
                        image: AssetImage('images/facebook.png'),
                        width: 30,
                        height: 30,
                      ),
                      SizedBox(width: 10),
                      Text(
                        "Facebook",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Image(
                        image: AssetImage('images/instagram.png'),
                        width: 30,
                        height: 30,
                      ),
                      SizedBox(width: 10),
                      Text(
                        "Instagram",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18
                        ),
                      ),
                    ],
                  ),
                   SizedBox(height: 15),
                   Row(
                    children: [
                      Image(
                        image: AssetImage('images/twitter.png'),
                        width: 30,
                        height: 30,
                      ),
                      SizedBox(width: 10),
                      Text(
                        "Twitter",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18
                        ),
                      ),
                    ],
                  ),
               ],
             )
           ),
         ],
       ),
    );
  }
}