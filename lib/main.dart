import 'package:flutter/material.dart';
import 'package:food_web/Screens/Home/home_advice.dart';
import 'package:food_web/Screens/Home/home_screen.dart';
import 'package:food_web/Screens/Login/login_screen.dart';
import 'package:food_web/constant.dart';
import 'Screens/Landing/landing_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      routes: {
        "/": (context) => LandingScreen(),
        "/login": (context) => LoginScreen(),
        "/home": (context) => HomeScreen(),
        "/advice": (context) => HomeAdviceScreen()
      },
      theme: ThemeData(
        primaryColor: kPrimaryColor
        // primarySwatch: Colors.blue,
      ),
    );
  }
}


