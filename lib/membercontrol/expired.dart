import 'package:flutter/material.dart';
import 'package:rallybuddy/functions/roundedbuttons.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class expired extends StatelessWidget {
  const expired({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(height: 50),
            SizedBox(
              child: Image.asset('assets/finish.png'),
              width: double.infinity,
            ),
            const SizedBox(height: 50),

//--------------------------------------------------------------------------
            SizedBox(
              child: AnimatedTextKit(
                  animatedTexts: [
                    ColorizeAnimatedText(
                      'Finished', textStyle: TextStyle(
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
            const Text('This years rally has now Finished.',
                textAlign: TextAlign.center, style: TextStyle(fontSize: 20)),
            const Text('',
                textAlign: TextAlign.center, style: TextStyle(fontSize: 18)),
            const Text(
                'This app will be updated with the next Rally around Spring 2023',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18)),
            const Text(
                '',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16)),

            const SizedBox(height: 25),


            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}