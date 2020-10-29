import 'package:flutter/material.dart';
import 'package:articalist/constants.dart';
import 'package:articalist/components/custom_iconButton.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: Text(
            'Articalist.',
            style: kArticalistMainHeading,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 15.0),
          child: Row(
            children: <Widget>[
              CustomIconButtom(
                iconData: FontAwesomeIcons.solidBookmark,
                onPressed: () {},
              ),
              CustomIconButtom(
                iconData: FontAwesomeIcons.filter,
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
