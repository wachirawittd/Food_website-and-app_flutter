import 'package:flutter/material.dart';
import 'package:food_web/Screens/Home/Components/body_advice.dart';

class HomeAdviceScreen extends StatefulWidget {
  HomeAdviceScreen({Key key}) : super(key: key);

  @override
  _HomeAdviceScreenState createState() => _HomeAdviceScreenState();
}

class _HomeAdviceScreenState extends State<HomeAdviceScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        child: BodyAdviceScreen()
      ),
    );
  }
}
