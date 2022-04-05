import 'package:flutter/material.dart';
import 'package:rallybuddy/functions/roundedbuttons.dart';
import 'package:rallybuddy/functions/constants.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:rallybuddy/functions/globals.dart';
import 'package:form_builder_validators/form_builder_validators.dart';


const String passcode = 'bob2020'; /////////////////////////////////master code

class Registration extends StatefulWidget {
  @override
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  final GlobalKey<FormBuilderState> _fbKey = GlobalKey<FormBuilderState>();
  bool showSpinner = false;
  late String email;
  late String password;
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
            key: _fbKey,
            autovalidateMode: AutovalidateMode.disabled,
            child: SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    SizedBox(
                      height: 50.0,
                    ),
                    Hero(
                      tag: 'logo',
                      child: Container(
                        height: 150.0,
                        child: Image.asset('assets/boblogoneg.png'),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      'This App is for registered Bobbers only.',
                      textAlign: TextAlign.center,
                    ),
                    Text('You must activate this app before using.',
                        textAlign: TextAlign.center),
                    Text(
                        'The Bob Admin Team will tell you the Activation Key when the app is ready',
                        textAlign: TextAlign.center),
                    Text(
                        'At least 1 person in each team should activate the app',
                        textAlign: TextAlign.center),




                    SizedBox(
                      height: 8.0,
                    ),


                    FormBuilderTextField(
                      name: "Activation Code",
                      textAlign: TextAlign.center,
                      onChanged: (value) {
                        authcode = value!;
                      },
                      decoration: kTextFieldDecoration.copyWith(
                          hintText: 'Enter the current Activation Code'),
                      validator: FormBuilderValidators.compose([
                        FormBuilderValidators.required(context, errorText:'You must enter the Authorisation Code'),
                      ]),


                    ),
                    SizedBox(
                      height: 20.0,
                    ),




                    RoundedButton(
                      title: 'Register',
                      colour: Colors.blueAccent,
                      onPressed: () async {
                        if (authcode != passcode) {
                          Navigator.pushNamed(context, 'error');
                        }
                        else {
                          SharedPreferences prefs =
                          await SharedPreferences.getInstance();
                          setState(() {
                            prefs.setString('email', 'b@b.com');
                            prefs.setString('password', 'pass');


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
                        }


                      },
                    ),

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
