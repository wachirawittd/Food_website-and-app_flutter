import 'package:flutter/material.dart';

class SoCialBtn extends StatelessWidget {
  final String icon;
  final Function press;
  const SoCialBtn({Key key, this.icon, this.press}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.black26, offset: Offset(0, 2), blurRadius: 6.0)
            ],
            image: DecorationImage(
                image: AssetImage(icon)
            )
        ),
      ),
    );
  }
}
