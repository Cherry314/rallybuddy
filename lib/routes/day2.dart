import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:rallybuddy/functions/RouteCardLink.dart';
import 'package:rallybuddy/functions/RouteCardStd.dart';
import 'package:rallybuddy/functions/ArrowDown.dart';
import 'package:rallybuddy/routes/day1.dart';
import 'package:rallybuddy/routes/day3.dart';

import 'package:rallybuddy/functions/globals.dart';
import 'package:rallybuddy/NavBar.dart';
import 'package:rallybuddy/functions/HeaderText.dart';
class Day2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: NavBar(),
        appBar: AppBar(
          title: const Text('Benidorm or Bust - Rally Buddy'),
        ),
        body: GestureDetector(
          onPanUpdate: (details) {
            if (details.delta.dx > 0) {
              Navigator.push(
                  context,
                  PageTransition(
                      type: PageTransitionType.fade,
                      duration: Duration(milliseconds: 100),
                      child: Day1()));
            } else if (details.delta.dx < 0) {
              Navigator.push(
                  context,
                  PageTransition(
                      type: PageTransitionType.fade,
                      duration: Duration(milliseconds: 100),
                      child: Day3()));
            }
          },
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/day2bg.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SizedBox(width: double.infinity, height: 5),
                HeaderText(headtext: 'Day 2', fontosize: 40),
                HeaderText(headtext: 'Rouen to Poitiers', fontosize: 25),
                RouteCardStd('Wednesday 11th May 2022', Colors.white, 15),
                SizedBox(height: 20),
                RouteCardStd('Morning Meet', Colors.white, 25),
                RouteCardLink('49.4172291, 1.0457366', Colors.yellow, 20.0,
                    49.4172291, 1.0457366),
                ArrowDown(),
                RouteCardStd(
                    'Toll: 2hr 7min - 211Km / 131miles', Colors.white, 15),
                RouteCardStd(
                    'No Toll: 3hr 24min - 204km / 126miles', Colors.white, 15),
                RouteCardStd('No Motorways: 3hr 54min - 198km / 123miles',
                    Colors.white, 15),
                ArrowDown(),
                RouteCardStd('Midday Meet', Colors.white, 25),
                RouteCardStd('Near Canton du Mans-6', Colors.white, 15),
                RouteCardLink(
                    '47.9566161, 0.2067349', Colors.yellow, 25, 47.9566161, 0.2067349),
                ArrowDown(),
                RouteCardStd(
                    'Toll: 2hr 29min - 190km / 118miles', Colors.white, 15),
                RouteCardStd(
                    'No Tolls: 2hr 40min - 175km / 109miles', Colors.white, 15),
                RouteCardStd('No Motorways: 2hr 44min - 173km / 108miles',
                    Colors.white, 15),
                ArrowDown(),
                RouteCardStd(hotelName2, Colors.white, 25),
                RouteCardStd(hotelAdd2, Colors.white, 15),
                RouteCardLink(
                    '$hotelLat2 / $hotelLat2', Colors.yellow, 25, hotelLat2, hotelLat2),
                SizedBox(height: 50),

              ],
            ),
          ),
        ),
      ),
    );
  }
}

