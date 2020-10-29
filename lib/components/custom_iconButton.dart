import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomIconButtom extends StatelessWidget {
  CustomIconButtom({@required this.iconData, @required this.onPressed});

  final IconData iconData;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      splashColor: Colors.white,
      icon: FaIcon(
        iconData,
        color: Colors.white54,
      ),
      iconSize: 25.0,
      onPressed: onPressed,
    );
  }
}
