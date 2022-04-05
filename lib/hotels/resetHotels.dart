import 'package:flutter/material.dart';
import 'package:rallybuddy/functions/roundedbuttons.dart';
import 'package:rallybuddy/functions/globals.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:rallybuddy/NavBar.dart';
class ResetHotels extends StatelessWidget {
  const ResetHotels({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: NavBar(),
        appBar: AppBar(
          title: const Text('Benidorm or Bust - Rally Buddy'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(height: 50),
            Text('Confirm Hotel Reset',
                textAlign: TextAlign.center, style: TextStyle(fontSize: 18)),
            Center(
            ),
            //           Text('Thank you.',
            //               textAlign: TextAlign.center, style: TextStyle(fontSize: 18)),
            Text('This will Re-set all the Hotels',
                textAlign: TextAlign.center, style: TextStyle(fontSize: 18)),
            Text(
                'If you have any hotels stored, you will loose the settings. ',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16)),

            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                RoundedButton(
                  title: 'Cancel',
                  colour: Colors.lightBlueAccent,
                  onPressed: () {
                    Navigator.pushNamed(context, '/');
                  },
                ),
                RoundedButton(
                  title: 'Reset Hotels',
                  colour: Colors.blueAccent,
                  onPressed: () async {
                    SharedPreferences prefs =
                    await SharedPreferences.getInstance();
                    prefs.setString('hotelName1', 'Rouen');
                    prefs.setString('hotelAdd1', 'Central Rouen Area');
                    prefs.setDouble('hotelLat1', 49.442402);
                    prefs.setDouble('hotelLon1', 1.098460);
                    prefs.setString('hotelDay1', '1');
                    hotelName1 = 'Rouen';
                    hotelAdd1 = 'TO Central Rouen';
                    hotelDay1 = '1';
                    hotelLat1 = 49.442402;
                    hotelLon1 = 1.098460;

                    prefs.setString('hotelName2', 'Poitiers');
                    prefs.setString('hotelAdd2', 'Central Poitiers Area');
                    prefs.setDouble('hotelLat2', 46.5802);
                    prefs.setDouble('hotelLon2', 0.3404);
                    prefs.setString('hotelDay2', '2');
                    hotelName2 = 'Poitiers';
                    hotelAdd2 = 'To Central Poitiers';
                    hotelDay2 = '2';
                    hotelLat2 = 46.5802;
                    hotelLon2 = 0.3404;

                    prefs.setString('hotelName3', 'Pau');
                    prefs.setString('hotelAdd3', 'Central Pau Area');
                    prefs.setDouble('hotelLat3', 43.2951);
                    prefs.setDouble('hotelLon3', 0.3708);
                    prefs.setString('hotelDay3', '3');
                    hotelName3 = 'Pau';
                    hotelAdd3 = 'To Central Pau';
                    hotelDay3 = '3';
                    hotelLat3 = 43.2951;
                    hotelLon3 = 0.3708;

                    prefs.setString('hotelName4', 'Zaragoza');
                    prefs.setString('hotelAdd4', 'Central Zaragoza Area');
                    prefs.setDouble('hotelLat4', 41.6488);
                    prefs.setDouble('hotelLon4', 0.8891);
                    prefs.setString('hotelDay4', '4');
                    hotelName4 = 'Zaragoza';
                    hotelAdd4 = 'To Central Zaragoza';
                    hotelDay4 = '4';
                    hotelLat4 = 41.6488;
                    hotelLon4 = 0.8891;

                    Navigator.pushNamed(context, 'thankyou');

                  },
                ),

              ],
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}

