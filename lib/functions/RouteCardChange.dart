import 'package:flutter/material.dart';

class RouteCardChange extends StatelessWidget {
  RouteCardChange(this.txt, this.colour, this.txtsize, this.where);
  final String txt;
  final Color colour;
  final double txtsize;
  final String where;


  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, where);
        },
        child: Text(
          txt,
          style: TextStyle(fontSize: txtsize, color: colour),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}