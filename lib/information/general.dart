import 'package:flutter/material.dart';
import 'package:rallybuddy/functions/roundedbuttons.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:rallybuddy/NavBar.dart';
import 'package:rallybuddy/functions/HeaderText.dart';

class Contact extends StatefulWidget {
  @override
  _ContactState createState() => _ContactState();
}

const activeCardColour = Color(0xFF1D1E33);
const inactiveCarColour = Colors.blueGrey;

class _ContactState extends State<Contact> {
  bool pressAttention = false;
  late String email;
  bool loggedIn = false;



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 1,horizontal: 30),
        child: Scaffold(
          drawer: NavBar(),
          appBar: AppBar(
            title: const Text('Benidorm or Bust - Rally Buddy'),
          ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                SizedBox(height: 30),
                HeaderText(headtext: 'Contact', fontosize: 30),
                SizedBox(height: 20),
                Text('There are a few ways you can contact the Admin Team',textAlign: TextAlign.center, style: TextStyle(fontSize: 18)),
                Text('',textAlign: TextAlign.center, style: TextStyle(fontSize: 20)),
                //  Text('You can send GPS co-ords direct to the Admin Chat Page'),
                Text('', textAlign: TextAlign.center),

                RoundedButton(
                  title: 'Telephone / Text: 073 989 989 15',
                  colour: Colors.orange,
                  onPressed: () {
                    _tel('tel:07398998915');
                  },
                ),
                // RoundedButton(
                //   title: 'SMS : 073 989 989 15',
                //   colour: Colors.orange,
                //   onPressed: () {
                //     _tel('sms:07398998915');
                //   },
                // ),
                RoundedButton(
                  title: 'Email: benidormorbust@gmail.com',
                  colour: Colors.orange,
                  onPressed: () {
                    _tel('mailto:benidormorbust@gmail.com');
                  },
                ),

                RoundedButton(
                  title: 'Facebook Main Page',
                  colour: Colors.orange,
                  onPressed: () {
                    _tel('https://www.facebook.com/Benidorm.or.bust/');
                  },
                ),
                RoundedButton(
                  title: 'FaceBook Chat Page',
                  colour: Colors.orange,
                  onPressed: () {
                    _tel('https://www.facebook.com/groups/664752836983914/');
                  },
                ),
                RoundedButton(
                  title: 'Breakdown / Emergency',
                  colour: Colors.red,
                  onPressed: () {
                    Navigator.pushNamed(context, 'admin');
                  },
                ),
                Text(''),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
void _tel(String lat) async {
  final url = lat;

  if (!await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}