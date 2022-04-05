import 'package:flutter/material.dart';

import 'package:rallybuddy/NavBar.dart';
import 'package:rallybuddy/functions/HeaderText.dart';

class Need extends StatefulWidget {
  @override
  _NeedState createState() => _NeedState();
}

const activeCardColour = Color(0xFF1D1E33);
const inactiveCarColour = Colors.blueGrey;

class _NeedState extends State<Need> {

  bool pressAttention = false;
  late String email;
  bool loggedIn = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 30),
        child: Scaffold(
          drawer: NavBar(),
          appBar: AppBar(
            title: const Text('Benidorm or Bust - Rally Buddy'),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(height: 30),
                HeaderText(headtext: 'That you Need', fontosize: 30),
                SizedBox(height: 20),
                Text('Your Team Car', style: TextStyle(color: Colors.green, fontSize: 18)),
                Text('You must have valid Road Tax and MOT to cover the whole event (10th to 14th May).', style: TextStyle(fontSize: 18),),
                Text('The tyres must be legal for all the countries we are traveling threw, all lights must work correctly.', style: TextStyle(fontSize: 18),),
                Text('The Logbook must be registered to one of the crew.', style: TextStyle(fontSize: 18),),
                Text(''),
                Text('Event Insurance', style: TextStyle(color: Colors.green, fontSize: 18)),
                Text('You must have and maintain Event (Rally) Insurance for the whole of the event (10th to 14th May 2020.', style: TextStyle(fontSize: 18),),
                Text('Normal car insurance only covers you to drive abroad and will/may not cover you to drive on a rally/event so you would be driving with no insurance.', style: TextStyle(fontSize: 18),),
                Text(''),
                Text('You only need \"Rally Insurance\" for the event (Its full road insurance with Event cover inc.)', style: TextStyle(color: Colors.red, fontSize: 18),),
                Text(''),
                Text('To get Insurance, call \'Sterling\' (Was \'The HIC\'). But you can only get Insurance 1 month before it starts.', style: TextStyle(fontSize: 18),),
                Text(''),
                Text('Call Stirling on 0344 381 9990', style: TextStyle(fontSize: 18),),
                Text(''),
                Text('Breakdown Insurance', style: TextStyle(color: Colors.green, fontSize: 18)),
                Text('We suggest getting breakdown cover. We do our Very Best to help all teams if they have a problem, but if we are already helping others we may not be able to help.', style: TextStyle(fontSize: 18),),
                Text('Plus, most breakdown cover plans will get you in a hire car to finish your trip, if it\'s that bad.', style: TextStyle(fontSize: 18),),
                Text(''),
                Text('This App, Maps and Satnav\'s', style: TextStyle(color: Colors.green, fontSize: 18)),
                Text('This app makes full use of Google Maps, however, an up to date Satnav or map would also work.', style: TextStyle(fontSize: 18),),
                Text('It is up to \'You\' as a team how you get from the start to the finish of each day, It is a \'Driving Challenge\'', style: TextStyle(fontSize: 18),),
                Text('You can do this in convoy with other teams or on your own, thats up to you.', style: TextStyle(fontSize: 18),),
                Text(''),
                Text('Our meeting points use GPS codes so, if you are using your Satnav make sure you know how to input GPS codes.', style: TextStyle(fontSize: 18),),
                Text(''),
                Text('We do ask that all Teams drive carefully and not make contact with other cars (either on the rally or not)', style: TextStyle(fontSize: 18),),
                Text(''),
                Text('At Sign on you will need', style: TextStyle(fontSize: 18),),
                Text('Logbook, MOT cert, & Rally Insurance Cert', style: TextStyle(fontSize: 18),),
                Text(''),
                Text(''),
                Text(''),

              ],
            ),
          ),
        ),
      ),
    );
  }
}

