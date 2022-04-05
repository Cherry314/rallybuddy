import 'package:flutter/material.dart';
import 'package:rallybuddy/functions/roundedbuttons.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'dart:io';
import 'package:rallybuddy/functions/HeaderText.dart';


class SettingsMenu extends StatefulWidget {
  @override
  _SettingsMenuState createState() => _SettingsMenuState();
}

const activeCardColour = Color(0xFF1D1E33);
const inactiveCarColour = Colors.blueGrey;

class _SettingsMenuState extends State<SettingsMenu> {
  bool pressAttention = false;

  late String email;
  bool loggedIn = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 35),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                SizedBox(height: 50),
                HeaderText(headtext: 'Settings',fontosize: 50,),
                Icon(
                  Icons.settings,
                  color: Colors.white,
                  size: 130.0,
                ),
                //      Image.asset('assets/info.png', height: 120),
                SizedBox(height: 80),

                // RoundedButton(
                //   title: 'Feedback',
                //   colour: Colors.lightBlueAccent,
                //   onPressed: () {
                //     Navigator.pushNamed(context, 'feedback');
                //   },
                // ),

                RoundedButton(
                  title: 'Reset App',
                  colour: Colors.lightBlueAccent,
                  onPressed: () {
                    Navigator.pushNamed(context, 'reset_app');
                  },
                ),
                SizedBox(height: 25),
                RoundedButton(
                  title: 'Close App',
                  colour: Colors.lightBlueAccent,
                  onPressed: () => exit(0),
                ),
                SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}