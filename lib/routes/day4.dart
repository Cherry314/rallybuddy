import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:rallybuddy/functions/RouteCardLink.dart';
import 'package:rallybuddy/functions/RouteCardStd.dart';
import 'package:rallybuddy/functions/ArrowDown.dart';
import 'package:rallybuddy/routes/day3.dart';
import 'package:rallybuddy/routes/day5.dart';
import 'package:rallybuddy/functions/globals.dart';
import 'package:rallybuddy/NavBar.dart';
import 'package:rallybuddy/functions/HeaderText.dart';
class Day4 extends StatelessWidget {
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
                      child: Day3()));
            } else if (details.delta.dx < 0) {
              Navigator.push(
                  context,
                  PageTransition(
                      type: PageTransitionType.fade,
                      duration: Duration(milliseconds: 100),
                      child: Day5()));
            }
          },
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/day4bg.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SizedBox(width: double.infinity , height: 5),
                HeaderText(headtext: 'Day 4', fontosize: 40),
                HeaderText(headtext: 'Pau to Zaragoza', fontosize: 25),
                RouteCardStd('Friday 13th May 2022', Colors.white, 15),
                SizedBox(height: 20),
                RouteCardStd('Morning Meet', Colors.white, 25),
                RouteCardLink(
                    '43.2846371, -0.3465930', Colors.yellow, 20.0, 43.2846371, -0.3465930),
                ArrowDown(),
                RouteCardStd('1hr 55min - 95km / 59miles', Colors.white, 10),
                RouteCardStd('There are no Tolls or Motorways', Colors.white, 10),
                //RouteCardStd('No Motorways: 3hr 39min - 198km / 123miles', Colors.white, 10),
                ArrowDown(),
                RouteCardStd('Midday Meet', Colors.white, 25),
                RouteCardStd('Near 65170 Saint-Lary-Soulan', Colors.white, 15),
                RouteCardLink('42.8130794, 0.3182863', Colors.yellow, 25,
                    42.8130794, 0.3182863),
                ArrowDown(),
                RouteCardStd('Toll: 3hr 13min - 236km / 146miles', Colors.white, 15),
                RouteCardStd('There are no Toll Roads', Colors.white, 15),
                RouteCardStd('No Motorways: 3hr 54min - 247km / 154miles',
                    Colors.white, 15),
                //RouteCardStd('No Motorways: 3hr 39min - 198km / 123miles', Colors.white, 10),
                ArrowDown(),
                RouteCardStd(hotelName4, Colors.white, 25),
                RouteCardStd(hotelAdd4, Colors.white, 15),
                RouteCardLink('$hotelLat4 / $hotelLon4', Colors.yellow, 25,
                    hotelLat4, hotelLon4),
                SizedBox(height: 50),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

