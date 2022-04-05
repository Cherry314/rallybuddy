import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:rallybuddy/functions/RouteCardLink.dart';
import 'package:rallybuddy/functions/RouteCardStd.dart';
import 'package:rallybuddy/evenings/eve1eve.dart';
import 'package:rallybuddy/evenings/eve2.dart';
import 'package:rallybuddy/functions/imagelink.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:rallybuddy/NavBar.dart';
import 'package:rallybuddy/functions/HeaderText.dart';

class Eve1 extends StatelessWidget {
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
                        child: Eve1Eve()));
              } else if (details.delta.dx < 0) {
                Navigator.push(
                  context,
                  PageTransition(
                    type: PageTransitionType.fade,
                    duration: Duration(milliseconds: 100),
                    child: Eve2(),
                  ),
                );
              }
            },
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/eve1bg.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
               // mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      HeaderText(headtext: "Evening 1", fontosize: 35),
                      SizedBox(height: 25),
                      RouteCardStd('Tuesday 10th May 2022', Colors.white, 20),
                      SizedBox(height: 25),
                      RouteCardStd('O\'Kallaghan\'s', Colors.yellow, 30),


                    ],
                  ),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      FittedBox(
                       child: Container(
                         margin: const EdgeInsets.all(25.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30.0),
                          child: Image.asset("assets/okall.jpeg"),
                        ),

                        ),
                        fit: BoxFit.scaleDown ,
                      ),

                     // ImageLink('scottish.jpg', 250, 51.12284, 1.31517),
                      RouteCardStd('Meet up Point', Colors.white, 18),
                      RouteCardStd('13 Place du General de Gaulle 76000, Rouen', Colors.white, 15),
                      SizedBox(height: 25),
                      RouteCardStd('Co-ordinates', Colors.white, 20),
                      SizedBox(height: 25),
                      RouteCardLink('49.4424872, 1.098054', Colors.yellow, 25, 49.4424872,1.098054),
                      SizedBox(height: 25),
                      RouteCardStd('Press Co-ords open Google maps', Colors.white, 20),

                      //RouteCardLink('LINK 1', Colors.yellow, 25, 51.12284,1.31517),


                    ],
                  ),



                ],
              ),
            ),
          )),
    );
  }
}
