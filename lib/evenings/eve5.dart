import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:rallybuddy/functions/RouteCardStd.dart';
import 'package:rallybuddy/evenings/eve4.dart';
import 'package:rallybuddy/functions/imagelink.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:rallybuddy/NavBar.dart';
import 'package:rallybuddy/functions/HeaderText.dart';
import 'package:rallybuddy/functions/RouteCardLink.dart';

class Eve5 extends StatelessWidget {
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
                        child: Eve4()));
              }
            },
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/eve5bg.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      HeaderText(headtext: "Evening 5", fontosize: 35),
                      SizedBox(height: 25),
                      RouteCardStd('Saturday 14th May 2022', Colors.white, 20),
                      SizedBox(height: 25),
                      RouteCardStd('Jokers', Colors.yellow, 30),


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
                            child: Image.asset("assets/Jokers.jpg"),
                          ),

                        ),
                        fit: BoxFit.scaleDown ,
                      ),

                      // ImageLink('scottish.jpg', 250, 51.12284, 1.31517),
                      RouteCardStd('Meet up Point', Colors.white, 18),
                      RouteCardStd('Jokers, Avenida Filipinas 03503, Benidorm', Colors.white, 15),
                      SizedBox(height: 25),
                      RouteCardStd('Co-ordinates', Colors.white, 20),
                      SizedBox(height: 25),
                      RouteCardLink('38.5382388,-0.1141836', Colors.yellow, 25, 38.5382388,-0.1141836),
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
