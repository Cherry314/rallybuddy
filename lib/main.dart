import 'package:flutter/material.dart';
import 'package:rallybuddy/functions/resetApp.dart';
import 'package:rallybuddy/home.dart';
import 'package:rallybuddy/settings/setup.dart';
import 'package:rallybuddy/routes/day1.dart';
import 'package:rallybuddy/routes/day2.dart';
import 'package:rallybuddy/routes/day3.dart';
import 'package:rallybuddy/routes/day4.dart';
import 'package:rallybuddy/routes/day5.dart';
import 'package:rallybuddy/routes/dayinit.dart';
import 'package:rallybuddy/evenings/eveinit.dart';
import 'package:rallybuddy/evenings/eve1eve.dart';
import 'package:rallybuddy/evenings/eve1.dart';
import 'package:rallybuddy/evenings/eve2.dart';
import 'package:rallybuddy/evenings/eve3.dart';
import 'package:rallybuddy/evenings/eve4.dart';
import 'package:rallybuddy/evenings/eve5.dart';
import 'package:rallybuddy/comms//welcome_screen.dart';
import 'package:rallybuddy/comms/registration_shared_pref.dart';
import 'package:rallybuddy/comms/admincontrol.dart';
import 'package:rallybuddy/membercontrol/registration.dart';
import 'package:rallybuddy/membercontrol/thankyou.dart';
import 'package:rallybuddy/settings/feedback.dart';
import 'package:rallybuddy/information/general.dart';
import 'package:rallybuddy/information/safelegal.dart';
import 'package:rallybuddy/hotels/hotels.dart';
import 'package:rallybuddy/information/need.dart';
import 'package:rallybuddy/information/theferry.dart';
import 'package:rallybuddy/information/charity.dart';
import 'package:rallybuddy/membercontrol/error.dart';
import 'package:flutter/services.dart';
import 'package:rallybuddy/settings/settingMenu.dart';
import 'package:rallybuddy/hotels/confirmChange.dart';
import 'package:rallybuddy/hotels/resetHotels.dart';
import 'package:rallybuddy/hotels/manualHotelChange.dart';
import 'package:rallybuddy/membercontrol/about.dart';
import 'package:rallybuddy/membercontrol/expired.dart';

//Note for Tony Next Year
//this page only sets up the menus, then sends them to 'Home' which will either
//send them for activation or stay on home

void main() async{
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]); // force app to run in portrait
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Benidorm or Bust',
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      initialRoute: 'thankyou',
      routes: {
        '/': (context) => MyHomePage(),
        '/setup': (context) => Setup(),
        '/dayinit': (context) => Dayinit(),
        '/day1': (context) => Day1(),
        '/day2': (context) => Day2(),
        '/day3': (context) => Day3(),
        '/day4': (context) => Day4(),
        '/day5': (context) => Day5(),
        '/eveinit': (context) => Eveinit(),
        'eve1eve': (context) => Eve1Eve(),
        'eve1': (context) => Eve1(),
        'eve2': (context) => Eve2(),
        'eve3': (context) => Eve3(),
        'eve4': (context) => Eve4(),
        'eve5': (context) => Eve5(),
        'welcome_screen': (context) => WelcomeScreen(),
        'redo_shared_pref': (context) => RedoSharedPrefs(),
        'admin': (context) => Admin(),
        'registration': (context) => Registration(),
        'thankyou': (context) => ThankYou(),
        'feedback': (context) => Feedbackx(),
        'general': (context) => Contact(),
        'hotels': (context) => Hotels(),
        'safelegal': (context) => SafeLegal(),
        'need': (context) => Need(),
        'ferry': (context) => TheFerry(),
        'charity': (context) => Charity(),
        'error': (context) => Error(),
        'settings_menu': (context) => SettingsMenu(),
        'confirm_change': (context) => ConfirmHotelChange(),
        'reset_hotels': (context) => ResetHotels(),
        'manual_hotel_change': (context) => ManualHotelChange(),
        'reset_app': (context) => resetApp(),
        'about': (context) => about(),
        'expired': (context) => expired(),
        // 'push':(context)=> Push(),
      },
    );
  }
}