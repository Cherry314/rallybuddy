import 'package:flutter/material.dart';

class RouteCardStd extends StatelessWidget {
  RouteCardStd(this.txt, this.colour, this.txtsize);
  final String txt;
  final Color colour;
  final double txtsize;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 0, horizontal: 15),
      child: Text(
        txt,
        style: TextStyle(fontSize: txtsize, color: colour),
        textAlign: TextAlign.center,
      ),
    );
  }
}