import 'package:flutter/material.dart';
import 'package:food_web/Screens/Login/Components/confirmBtn.dart';
import 'package:food_web/Screens/Login/Components/fieldCheckBox.dart';
import 'package:food_web/Screens/Login/Components/fieldEmail.dart';
import 'package:food_web/Screens/Login/Components/fieldPassword.dart';
import 'package:food_web/Screens/Login/Components/forgotBtn.dart';
import 'package:food_web/Screens/Login/Components/signInWithText.dart';
import 'package:food_web/Screens/Login/Components/signupBtn.dart';
import 'package:food_web/Screens/Login/Components/socialBtn.dart';
import 'package:food_web/constant.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _rememberMe = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Stack(
        children: [
          Container(
              height: size.height,
              width: size.width,
              child: SingleChildScrollView(
                physics: AlwaysScrollableScrollPhysics(),
                padding: EdgeInsets.symmetric(
                  horizontal: 40,
                  vertical: 120,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Sign In',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'OpenSans',
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 30.0),
                    FieldEmail(),
                    SizedBox(height: 30.0),
                    FieldPassword(),
                    SizedBox(height: 5.0),
                    ForgotBtn(),
                    FieldCheckBox(
                        rememberMe: _rememberMe,
                        press: (value) {
                          setState(() {
                             _rememberMe = value;
                          });
                        }
                    ),
                    ConFirmBtn(),
                    SignInWithText(),
                    Container(
                        width: size.width > 800 ? 400 : size.width,
                        padding: EdgeInsets.symmetric(vertical: 30.0),
                        child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SoCialBtn(
                            icon: size.width < 400 ? "assets/images/icon-facebook.png" : "images/icon-facebook.png",
                            press: () => print("Login with Facebook"),
                          ),
                          SoCialBtn(
                            icon: size.width < 400 ? "assets/images/icon-google.png" : "images/icon-google.png",
                            press: () => print("Login with Google"),
                          ),
                          SoCialBtn(
                            icon: size.width < 400 ? "assets/images/icon-instagram.png" : "images/icon-instagram.png",
                            press: () => print("Login with Instagram"),
                          )
                        ],
                      ),
                    ),
                    SignupBtn(press: () => {Navigator.pushNamed(context, '/home')}),
                  ],
                ),
            )
          )
        ],
      ),
    );
  }
}
