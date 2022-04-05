import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:rallybuddy/functions/RouteCardStd.dart';
import 'package:rallybuddy/home.dart';
import 'package:rallybuddy/evenings/eve1eve.dart';
import 'package:rallybuddy/NavBar.dart';
import 'package:rallybuddy/functions/HeaderText.dart';
class Eveinit extends StatelessWidget {
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
                        duration: Duration(milliseconds: 100),
                        child: MyHomePage()));
              } else if (details.delta.dx < 0) {
                Navigator.push(
                  context,
                  PageTransition(
                    type: PageTransitionType.fade,
                    duration: Duration(milliseconds: 100),
                    child: Eve1Eve(),
                  ),
                );
              }
            },
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/evepre1bg.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  SizedBox(width: double.infinity, height: 5),
                  HeaderText(headtext: "2022 Evening Planner", fontosize: 30),
                  RouteCardStd('Instructions', Colors.white, 20),
                  SizedBox(width: double.infinity, height: 20),

                  FittedBox(
                    child: Container(
                      margin: const EdgeInsets.all(25.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30.0),
                        child: Image.asset("assets/wallaby1.jpg"),
                      ),

                    ),
                    fit: BoxFit.scaleDown ,
                  ),






                  RouteCardStd(
                      'Tap the Co-ords to start the route', Colors.black, 20.0),
                  RouteCardStd(
                      'These links will open Google Maps and plot a route from your current location.',
                      Colors.white,
                      20),
                  SizedBox(width: double.infinity, height: 30),

                  RouteCardStd(
                      'You can select Car or Walking on the Google Map App before you press \'Start\'',
                      Colors.white,
                      20),

                  RouteCardStd('', Colors.white, 25),

                  RouteCardStd(
                      'Swipe left and right to change days.', Colors.white, 15),
                  RouteCardStd('<<<< Swipe for day 1.', Colors.white, 15),
                  SizedBox(height: 50),
                ],
              ),
            ),
          )),
    );
//    );
  }
}
