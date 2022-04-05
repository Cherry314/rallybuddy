import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:rallybuddy/functions/RouteCardLink.dart';
import 'package:rallybuddy/functions/RouteCardStd.dart';
import 'package:rallybuddy/functions/ArrowDown.dart';
import 'package:rallybuddy/routes/day4.dart';
import 'package:rallybuddy/NavBar.dart';
import 'package:rallybuddy/functions/HeaderText.dart';
class Day5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: NavBar(),
        appBar: AppBar(
          title: const Text('Benidorm or Bust - Rally Buddy'),
        ),
        body:GestureDetector(
          onPanUpdate: (details) {
            if (details.delta.dx > 0) {
              Navigator.push(
                  context,
                  PageTransition(
                      type: PageTransitionType.fade,
                      duration: Duration(milliseconds: 100),
                      child: Day4()));
            } },
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/day5bg.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SizedBox(width: double.infinity , height: 5),
                HeaderText(headtext: 'Day 5', fontosize: 40),
                HeaderText(headtext: 'Zaragoza to Benidorm', fontosize: 25),
                RouteCardStd('Thursday 12th May 2022', Colors.white, 15),
                SizedBox(height: 20),
                RouteCardStd('Morning Meet', Colors.white, 25),
                RouteCardLink(
                    '41.4725097, -1.1018762', Colors.yellow, 20.0, 41.47250976687271, -1.1018762594856508),
                RouteCardStd('Morning Meet', Colors.white, 15),
                ArrowDown(),
                RouteCardStd('No Toll: 1hr 36min - 142km / 88Miles', Colors.white, 15),
                RouteCardStd('No Motorways: 3hr 6min - 140km / 82miles', Colors.white, 15),
                ArrowDown(),
                RouteCardStd('Midday Meet', Colors.white, 25),
                RouteCardLink('39.4823954, -0.3253734', Colors.yellow, 25,
                    39.4823954, -0.3253734),
                ArrowDown(),
                SizedBox(height: 20),
                RouteCardStd('No Toll: 1hr 36min - 142km / 88Miles', Colors.white, 15),
                RouteCardStd('No Motorways: 3hr 6min - 140km / 82miles', Colors.white, 15),
                ArrowDown(),
                RouteCardStd('Benidorm', Colors.white, 25),
                RouteCardStd('Market Carpark', Colors.white, 15),
                RouteCardLink('38.541178, -0.112315', Colors.yellow, 25,
                    38.541178, -0.112315),
                RouteCardStd('NOTE: the finish line does not open until 4pm', Colors.white, 20),
                RouteCardStd('If you arrive before then. It will be closed.', Colors.white, 15),

                SizedBox(height: 50),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

