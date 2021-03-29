import 'package:flutter/material.dart';
import 'package:food_web/Components/app_bar_web.dart';
import 'package:food_web/Screens/Landing/Components/body.dart';

class LandingScreen extends StatefulWidget {
  // LandingScreen({Key key}) : super(key: key);
  @override
  _LandingScreenState createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        drawer: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.white,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(""),
                        fit: BoxFit.cover)),
                child: Text("Header"),
              ),
              ListTile(
                title: Text("Home"),
                onTap: () {
                  Navigator.of(context).pop();
                },
              )
            ],
          ),
        ),
        body: Container(
          height: size.height,
          width: size.width,
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(size.width < 400 ? "assets/images/bg.png" : "images/bg.png"), fit: BoxFit.cover)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              size.width > 400 ? CustomAppBar() : Text(""), 
              Spacer(), 
              Body(), 
              Spacer(flex: 2)
            ],
          ),
        ));
  }
}
