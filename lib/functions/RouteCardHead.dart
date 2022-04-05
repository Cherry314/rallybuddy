import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class RouteCardHead extends StatelessWidget {
  RouteCardHead(this.txt, this.colour, this.txtsize);
  final String txt;
  final Color colour;
  final double txtsize;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 0, horizontal: 15),

        child: AnimatedTextKit(
          animatedTexts: [
            TypewriterAnimatedText(txt,
              textStyle: const TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
              ),
              speed: const Duration(milliseconds: 1000),
            ),
          ],

          totalRepeatCount: 4,
          pause: const Duration(milliseconds: 1000),
          displayFullTextOnTap: true,
          stopPauseOnTap: true,
        )
    );
  }
}