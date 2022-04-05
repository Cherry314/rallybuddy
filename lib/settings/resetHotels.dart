import 'package:flutter/material.dart';
import 'package:rallybuddy/functions/roundedbuttons.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:rallybuddy/functions/globals.dart';

class ResetHotels extends StatefulWidget {
  const ResetHotels({Key? key}) : super(key: key);
  @override
  _ResetHotelsState createState() => _ResetHotelsState();
}

class _ResetHotelsState extends State<ResetHotels> {
  bool showSpinner = false;
  late String email;
  late String password;
  late String username;
  late String teamno;
  late String teamname;
  late String authcode;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: FormBuilder(
            autovalidateMode: AutovalidateMode.disabled,
            child: SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    SizedBox(
                      height: 8.0,
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    RoundedButton(
                        title: 'delete',
                        colour: Colors.blueAccent,
                        onPressed: () async {
                          SharedPreferences prefs =
                              await SharedPreferences.getInstance();
                          setState(() {
                            prefs.setString('email', 'error');
                            prefs.setString('password', 'error');
                            prefs.setString('username', 'error');
                            prefs.setString('teamno', 'error');
                            prefs.setString('teamname', 'error');

                            //Reset all Hotels
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
                            prefs.setString(
                                'hotelAdd2', 'Central Poitiers Area');
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
                            prefs.setString(
                                'hotelAdd4', 'Central Zaragoza Area');
                            prefs.setDouble('hotelLat4', 41.6488);
                            prefs.setDouble('hotelLon4', 0.8891);
                            prefs.setString('hotelDay4', '4');
                            hotelName4 = 'Zaragoza';
                            hotelAdd4 = 'To Central Zaragoza';
                            hotelDay4 = '4';
                            hotelLat4 = 41.6488;
                            hotelLon4 = 0.8891;
                          });
                          Navigator.pushNamed(context, 'about');
                        }),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
