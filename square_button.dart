import 'package:flutter/material.dart';

class SquareButton extends StatelessWidget {
  final Icon icon;
  final Color backgroundColor;
  final Function onTap;

  const SquareButton( {
    Key key,
    this.icon,
    this.backgroundColor,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        //margin: EdgeInsets.all(7.0),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(20),
        ),
        height: 60,
        width: 60,
        child: Center(child: icon),
      ),
    );
  }
}
