import 'package:flutter/material.dart';
import'package:animated_text_kit/animated_text_kit.dart';

class HeaderText extends StatelessWidget {
  HeaderText({required this.headtext, required this.fontosize});
  final String headtext;
  final double fontosize;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: AnimatedTextKit(
          animatedTexts: [
            ColorizeAnimatedText(
              headtext, textStyle: TextStyle(
              fontSize: fontosize,
              fontFamily: 'Horizon',
            ),textAlign: TextAlign.center,
              colors: [
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
    );
  }
}