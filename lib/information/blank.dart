import 'package:flutter/material.dart';
import 'package:rallybuddy/functions/roundedbuttons.dart';
import 'package:rallybuddy/functions/RouteCardHead.dart';
import 'package:rallybuddy/NavBar.dart';
import 'package:rallybuddy/functions/HeaderText.dart';



class Covid extends StatefulWidget {
  @override
  _CovidState createState() => _CovidState();
}

const activeCardColour = Color(0xFF1D1E33);
const inactiveCarColour = Colors.blueGrey;

class _CovidState extends State<Covid> {

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
        body: ListView(
          children: <Widget>[
            Text('testing'),
            Text('testing'),


          ],
        ),
      ),
    );
  }
}

