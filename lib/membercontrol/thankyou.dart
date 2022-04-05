import 'package:flutter/material.dart';
import 'package:rallybuddy/functions/roundedbuttons.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class ThankYou extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(height: 50),
            SizedBox(
              child: Image.asset('assets/covidx.png'),
              width: double.infinity,
            ),
            const SizedBox(height: 50),

//--------------------------------------------------------------------------
            SizedBox(
              child: AnimatedTextKit(
                  animatedTexts: [
                    ColorizeAnimatedText(
                      'Covid-19', textStyle: TextStyle(
                      fontSize: 50.0,
                      fontFamily: 'Horizon',
                    ),colors: [
                      Colors.purple,
                      Colors.blue,
                      Colors.yellow,
                      Colors.red,
                    ],
                    )
                  ],
                  isRepeatingAnimation: true,
                  onTap: () {
                    print("Tap Event");
                  }
              ),
            ),
//----------------------------------------------------------------------------
            const Text('Please be Covid Aware',
                textAlign: TextAlign.center, style: TextStyle(fontSize: 20)),
            const Text('Travel rules are changing all the times, please make sure you check all the rules and regulations before travelling',
                textAlign: TextAlign.center, style: TextStyle(fontSize: 18)),
            const Text(
                'Vaccine passport/Proof, Medical exceptions, Face-masks, hand sanitiser etc..',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18)),
            const Text(
                '',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16)),

            const SizedBox(height: 25),

            RoundedButton(
              title: 'Continue to App',
              colour: Colors.lightBlueAccent,
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}

