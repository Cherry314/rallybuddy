import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:rallybuddy/functions/RouteCardLink.dart';
import 'package:rallybuddy/functions/RouteCardStd.dart';
import 'package:rallybuddy/functions/ArrowDown.dart';
import 'package:rallybuddy/routes/day2.dart';
import 'package:rallybuddy/routes/day4.dart';

import 'package:rallybuddy/functions/globals.dart';
import 'package:rallybuddy/NavBar.dart';
import 'package:rallybuddy/functions/HeaderText.dart';
class Day3 extends StatelessWidget {
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
                      child: Day2()));
            } else if (details.delta.dx < 0) {
              Navigator.push(
                  context,
                  PageTransition(
                      type: PageTransitionType.fade,
                      duration: Duration(milliseconds: 100),
                      child: Day4()));
            }
          },
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/day3bg.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SizedBox(width: double.infinity, height: 5),
                HeaderText(headtext: 'Day 3', fontosize: 40),
                HeaderText(headtext: 'Poitiers to Pau', fontosize: 25),
                RouteCardStd('Thursday 12th May 2022', Colors.white, 15),
                SizedBox(height: 20),
                RouteCardStd('Morning Meet', Colors.white, 25),
                RouteCardLink(
                    '46.5518939, 0.3018764', Colors.yellow, 20.0, 46.551893974571605, 0.3018764185428901),
                ArrowDown(),
                RouteCardStd(
                    'Toll: 2hr 28min - 250km / 155miles', Colors.white, 10),
                RouteCardStd(
                    'No Tolls: 2hr 49min - 232km 144miles', Colors.white, 10),
                RouteCardStd('No Motorways: 4hr 44min - 246km / 152miles',
                    Colors.white, 10),
                ArrowDown(),
                RouteCardStd('Midday Meet', Colors.white, 25),
                RouteCardStd('Near 2 Chemin du Peyrat, 33240', Colors.white, 15),
                RouteCardLink(
                    '44.9906680, -0.4240881', Colors.yellow, 25, 44.9906680, -0.4240881),
                ArrowDown(),
                RouteCardStd(
                    'Toll: 2hr 16min - 235km / 146miles', Colors.white, 15),
                RouteCardStd(
                    'No Tolls: 3hr 6min - 240km 149miles', Colors.white, 15),
                RouteCardStd('No Motorways: 3hr 35min - 220km / 137miles',
                    Colors.white, 15),
                ArrowDown(),
                RouteCardStd(hotelName3, Colors.white, 25),
                RouteCardStd(hotelAdd3, Colors.white, 15),
                RouteCardLink(
                    '$hotelLat3 / $hotelLon3', Colors.yellow, 25, hotelLat3, hotelLon3),
                SizedBox(height: 50),

              ],
            ),
          ),
        ),
      ),
    );
  }
}

