import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:rallybuddy/functions/RouteCardLink.dart';
import 'package:rallybuddy/functions/RouteCardStd.dart';
import 'package:rallybuddy/evenings/eveinit.dart';
import 'package:rallybuddy/evenings/eve1.dart';
import 'package:rallybuddy/functions/imagelink.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:rallybuddy/NavBar.dart';
import 'package:rallybuddy/functions/HeaderText.dart';
import 'package:rallybuddy/functions/RouteCardPostcode.dart';
class Eve1Eve extends StatelessWidget {
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
                        child: Eveinit()));
              } else if (details.delta.dx < 0) {
                Navigator.push(
                  context,
                  PageTransition(
                    type: PageTransitionType.fade,
                    duration: Duration(milliseconds: 100),
                    child: Eve1(),
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
                      HeaderText(headtext: "Pre-Rally", fontosize: 40),
                      SizedBox(height: 25),
                      RouteCardStd('Monday 9th May 2022', Colors.white, 20),
                      SizedBox(height: 25),
                      RouteCardStd('Dover Sailing Club', Colors.yellow, 30),


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
                            child: Image.asset("assets/dover2.jpg"),
                          ),

                        ),
                        fit: BoxFit.scaleDown ,
                      ),

                      // ImageLink('scottish.jpg', 250, 51.12284, 1.31517),
                      RouteCardStd('Meet up Point', Colors.white, 18),
                      RouteCardStd('Royal Cinque Ports Yacht Club, 4-5 Waterloo Crescent, Dover', Colors.white, 15),
                      SizedBox(height: 25),
                      RouteCardStd('Co-ordinates', Colors.white, 20),
                      SizedBox(height: 25),


                      RouteCardPostcode('CT16 1LA', Colors.yellow, 25, "ct16 1LA"),
                   //   RouteCardLink('CT16 1LA', Colors.yellow, 25, CT16 1LA,),
                      SizedBox(height: 25),
                      RouteCardStd('Press Postcode open Google maps', Colors.white, 20),



                    ],
                  ),



                ],
              ),
            ),
          )),
    );
  }
}
