import 'package:flutter/material.dart';

class IconFavorite extends StatelessWidget {
  final Color splashColor;
  final Icon icons;
  const IconFavorite({Key key, this.splashColor, this.icons}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
        right: 10,
        top: 10,
        child: ClipOval(
          child: Material(
            color: Colors.white, // button color
            child: InkWell(
              splashColor: splashColor, // inkwell color
              child: SizedBox(
                  width: 30,
                  height: 30,
                  child: icons
              ),
              onTap: () {},
            ),
          ),
        ));
  }
}
