import 'package:flutter/material.dart';
import 'package:rallybuddy/functions/roundedbuttons.dart';
import 'package:shared_preferences/shared_preferences.dart';

class resetApp extends StatefulWidget {
  @override
  _resetAppState createState() => _resetAppState();
}

class _resetAppState extends State<resetApp> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 100),
        RoundedButton(
          onPressed: () async {
            //Todo Save to Shared Pref here
            SharedPreferences prefs = await SharedPreferences.getInstance();
            setState(() {
              prefs.setString('email', 'error');
              prefs.setString('password', ' error');
              prefs.setString('username', 'error');
              prefs.setString('teamno', 'error');
              prefs.setString('teamname', 'error');


              prefs.setString('hotelName1', 'Rouen');
              prefs.setString('hotelAdd1', 'Central Rouen Area');
              prefs.setDouble('hotelLat1', 49.442402);
              prefs.setDouble('hotelLon1', 1.098460);
              prefs.setString('hotelDay1', '1');

              prefs.setString('hotelName2', 'Poitiers');
              prefs.setString('hotelAdd2', 'Central Poitiers Area');
              prefs.setDouble('hotelLat2', 46.5802);
              prefs.setDouble('hotelLon2', 0.3404);
              prefs.setString('hotelDay2', '2');

              prefs.setString('hotelName3', 'Pau');
              prefs.setString('hotelAdd3', 'Central Pau Area');
              prefs.setDouble('hotelLat3', 43.2951);
              prefs.setDouble('hotelLon3', 0.3708);
              prefs.setString('hotelDay3', '3');

              prefs.setString('hotelName4', 'Zaragoza');
              prefs.setString('hotelAdd4', 'Central Zaragoza Area');
              prefs.setDouble('hotelLat4', 41.6488);
              prefs.setDouble('hotelLon4', 0.8891);
              prefs.setString('hotelDay4', '4');
            });

            Navigator.pushNamed(context, 'thankyou');
          }, colour: Colors.green, title: '', // not sure about colour or title,???????
        )
      ],
    );
  }
}
