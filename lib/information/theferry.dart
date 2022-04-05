import 'package:flutter/material.dart';
import 'package:rallybuddy/NavBar.dart';
import 'package:rallybuddy/functions/HeaderText.dart';

class TheFerry extends StatefulWidget {
  @override
  _TheFerryState createState() => _TheFerryState();
}
const activeCardColour = Color(0xFF1D1E33);
const inactiveCarColour = Colors.blueGrey;

class _TheFerryState extends State<TheFerry> {
  bool pressAttention = false;
  late String email;
  bool loggedIn = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: NavBar(),
        appBar: AppBar(
          title: const Text('Benidorm or Bust - Rally Buddy'),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 30),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(height: 30),
                HeaderText(headtext: 'The Ferry', fontosize: 30),
                SizedBox(height: 20),

                Text(
                    'We will be boarding the Ferry for the crossing to Calais at around 1pm on day 1 (10th May 2022)', style: TextStyle(fontSize: 18)),
                Text('Details will be with your Rundown Booklet given out at Sign On in the Yahct club in Dover', style: TextStyle(fontSize: 18)),
                Text(''),
                Text('What to do at the Ferry Terminal', style: TextStyle(fontSize: 20, color: Colors.green), ),
                Text('You will need your Passport\'s for all crew in your car and the Code given on the Ferry Form, given at Sign On.', style: TextStyle(fontSize: 18)),
                Text(''),
                Text('Please also note there may be extra paperwork regarding Covid-19', style: TextStyle(fontSize: 18)),
                Text(''),
                Text('The Crossing will take about 90 minuets, and France will be 1 hour ahead of us.', style: TextStyle(fontSize: 18)),
                Text(''),


              ],
            ),
          ),
        ),
      ),
    );
  }
}

