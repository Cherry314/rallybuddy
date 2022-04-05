import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:rallybuddy/functions/HeaderText.dart';
import 'package:rallybuddy/functions/RouteCardStd.dart';
import 'package:rallybuddy/functions/RouteCardHead.dart';
import 'package:rallybuddy/routes/day1.dart';
import 'package:rallybuddy/home.dart';
import 'package:rallybuddy/NavBar.dart';
class Dayinit extends StatelessWidget {
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
                        type: PageTransitionType.leftToRight,
                        duration: Duration(milliseconds:  100),
                        child: MyHomePage()));
              } else if (details.delta.dx < 0) {
                Navigator.push(
                    context,
                    PageTransition(
                        type: PageTransitionType.fade,
                        duration: Duration(milliseconds: 100),
                        child: Day1()));
              }
            },
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/dayinit.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  SizedBox(width: double.infinity, height: 10),
                  HeaderText(headtext: '2022 Route Planner', fontosize: 35),
                  RouteCardStd('Instructions', Colors.white, 20),
                  SizedBox(width: double.infinity, height: 20),
                  FittedBox(
                    child: Container(
                      margin: const EdgeInsets.all(25.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30.0),
                        child: Image.asset("assets/thisway3.jpg"),
                      ),

                    ),
                    fit: BoxFit.scaleDown ,
                  ),
                  RouteCardStd(
                      'Clicking on the Yellow Postcode/Co-ordinates will open Google Maps on that location',
                      Colors.white,
                      18.0),
                  RouteCardStd(
                      'Once this is loaded, simply click \' Your Location \' on the google maps app and it will plot your route.',
                      Colors.white,
                      18),
                  SizedBox(width: double.infinity, height: 30),

                  RouteCardStd(
                      'To select Toll / No tolls, press the 3 dots in the top right corner of Google Maps before you press \'Start\', then select \'Route Options\'',
                      Colors.white,
                      18),

                  RouteCardStd('', Colors.white, 25),

                  RouteCardStd(
                      'Swipe left and right to change days.', Colors.green, 20),
                  RouteCardStd('<<<< Swipe for day 1.', Colors.green, 15),
                  SizedBox(height: 50),
                ],
              ),
            ),
          )),
    );
//    );
  }
}

