import 'package:flutter/material.dart';
import 'package:food_web/Components/defualt_button.dart';
import 'package:food_web/Components/menu_item.dart';


class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(46),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, -2),
                blurRadius: 30,
                color: Colors.black.withOpacity(0.16))
          ]),
      child: Row(children: [
        Image.asset(
          size.width < 400 ? "assets/images/logo.png" : "images/logo.png",
          height: 25,
          alignment: Alignment.topCenter,
        ),
        SizedBox(width: 5),
        Text(
          'Food'.toUpperCase(),
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        Spacer(),
        size.width < 600
            ? IconButton(icon: new Icon(Icons.menu), onPressed: () {})
            : GroupMenuItem(action: "row")
      ]),
    );
  }
}

class GroupMenuItem extends StatelessWidget {
  final String action;
  const GroupMenuItem({Key key, this.action}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return action == 'row' ? Row(
      children: [
        MenuItem(title: "home", press: () {}),
        MenuItem(title: "about", press: () {}),
        MenuItem(title: "pricing", press: () {}),
        MenuItem(title: "contact", press: () {}),
        MenuItem(title: "login", press: () {}),
        DefaultButton(
          title: "get started",
          press: () {},
        )
      ],
    ) : Column(
      children: [
        MenuItem(title: "home", press: () {}),
        MenuItem(title: "about", press: () {}),
        MenuItem(title: "pricing", press: () {}),
        MenuItem(title: "contact", press: () {}),
        MenuItem(title: "login", press: () {}),
        DefaultButton(
          title: "get started",
          press: () {},
        )
      ],
    );
  }
}
