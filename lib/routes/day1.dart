import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:rallybuddy/functions/HeaderText.dart';
import 'package:rallybuddy/functions/RouteCardLink.dart';
import 'package:rallybuddy/functions/RouteCardStd.dart';
import 'package:rallybuddy/functions/ArrowDown.dart';
import 'package:rallybuddy/routes/day2.dart';
import 'package:rallybuddy/routes/dayinit.dart';
import 'package:rallybuddy/functions/globals.dart';
import 'package:rallybuddy/NavBar.dart';
class Day1 extends StatefulWidget {
  @override
  _Day1State createState() => _Day1State();
}

class _Day1State extends State<Day1> {
  void initState() {
    super.initState();
  }



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
                        child: Dayinit()));
              } else if (details.delta.dx < 0) {
                Navigator.push(
                    context,
                    PageTransition(
                        type: PageTransitionType.fade,
                        duration: Duration(milliseconds: 100),
                        child: Day2()));
              }
            },
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/day1bg.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  SizedBox(width: double.infinity, height: 5),
                  HeaderText(headtext: 'Day 1', fontosize: 40),
                  RouteCardStd('Tuesday 10th May 2022', Colors.white, 20),
                  RouteCardLink('', Colors.white, 40, 0, 0),
                  RouteCardStd('Dover', Colors.white, 25),
                  RouteCardStd('Yacht Club', Colors.white, 10),
                  RouteCardStd('8am Debreif', Colors.white, 10),
                  RouteCardLink('CT16 1LA', Colors.yellow, 20.0, 51.12284, 1.31517),
                  ArrowDown(),
                  RouteCardStd('Midday Meet', Colors.white, 25),
                  RouteCardStd('There is no Midday Meet on day 1', Colors.white, 20),
                  SizedBox(height: 20),
                  ArrowDown(),
                  RouteCardStd(
                      'Toll: 3hr 31min - 287km / 178miles', Colors.white, 15),
                  RouteCardStd(
                      'No Tolls: 4hr 7min - 293km / 182miles', Colors.white, 15),
                  RouteCardStd('No Tolls/Motorways: 5hr 2min - 288km / 179miles',
                      Colors.white, 15),
                  ArrowDown(),
                  RouteCardStd(hotelName1, Colors.white, 25),
                  RouteCardStd(hotelAdd1, Colors.white, 15),
                  RouteCardLink('$hotelLat1 / $hotelLon1', Colors.yellow, 25,
                      hotelLat1, hotelLon1),
                  SizedBox(height: 50),
                ],
              ),
            ),
          )),
    );
  }
}

