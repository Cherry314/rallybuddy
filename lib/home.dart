import 'package:flutter/material.dart';
import 'package:rallybuddy/functions/HeaderText.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:rallybuddy/functions/globals.dart';
import  'package:rallybuddy/NavBar.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
//  run 2 funcions before letting person into app  
  void initState() {
    super.initState();
    checkDate();
    getSharedPreferences();
    getHotelList();

  }
  bool pressAttention = false;
  late String email;
bool loggedIn = false;



  //--- Check if person is loggen in, of not bounce him to Registration
  void getSharedPreferences() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      email = (prefs.getString('email')) ?? 'error';
      if (email == 'error') {
        loggedIn = false;
        Navigator.of(context).pop();
        Navigator.pushNamed(context, 'registration'); // not logged in
      } else {
        loggedIn = true; // is logged in
      }
    });
  }

  void checkDate ()  {
    DateTime expireDate = DateTime(2022, 9, 30); //------------------------------------------------------------------------------EXPIRY DATE HERE
    DateTime now = DateTime.now();
    if (now.isAfter(expireDate)){
      Navigator.of(context).pop();
      Navigator.pushNamed(context, 'expired'); // not logged in

    }

    print ('------------------------------------------------------------------------------------------------------------- $now');

  }
  void getHotelList() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      hotelName1 = (prefs.getString('hotelName1')) ?? 'Errrrrrror';
      hotelAdd1 = (prefs.getString('hotelAdd1')) ?? 'Error';
      hotelDay1 = (prefs.getString('hotelDay1')) ?? 'Error';
      hotelLat1 = (prefs.getDouble('hotelLat1')) ?? 9999;
      hotelLon1 = (prefs.getDouble('hotelLon1')) ?? 9999;

      hotelName2 = (prefs.getString('hotelName2')) ?? 'Error';
      hotelAdd2 = (prefs.getString('hotelAdd2')) ?? 'Error';
      hotelDay2 = (prefs.getString('hotelDay2')) ?? 'Error';
      hotelLat2 = (prefs.getDouble('hotelLat2')) ?? 9999;
      hotelLon2 = (prefs.getDouble('hotelLon2')) ?? 9999;

      hotelName3 = (prefs.getString('hotelName3')) ?? 'Error';
      hotelAdd3 = (prefs.getString('hotelAdd3')) ?? 'Error';
      hotelDay3 = (prefs.getString('hotelDay3')) ?? 'Error';
      hotelLat3 = (prefs.getDouble('hotelLat3')) ?? 9999;
      hotelLon3 = (prefs.getDouble('hotelLon3')) ?? 9999;

      hotelName4 = (prefs.getString('hotelName4')) ?? 'Error';
      hotelAdd4 = (prefs.getString('hotelAdd4')) ?? 'Error';
      hotelDay4 = (prefs.getString('hotelDay4')) ?? 'Error';
      hotelLat4 = (prefs.getDouble('hotelLat4')) ?? 9999;
      hotelLon4 = (prefs.getDouble('hotelLon4')) ?? 9999;
    });
  }



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: NavBar(),
        appBar: AppBar(
          title: const Text('Benidorm or Bust - Rally Buddy'),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/WallpaperHome2.jpg"),
              fit: BoxFit.cover,
            ),
          ),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 50),
              HeaderText(headtext: 'Rally Buddy', fontosize: 50),
              HeaderText(headtext: '2022', fontosize: 40),
              HeaderText(headtext: '10th to the 14th May 2022', fontosize: 20),
            ],
          ),
        ),
      ),
    );
  }
}
