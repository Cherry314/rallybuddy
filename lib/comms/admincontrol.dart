import 'package:flutter/material.dart';
import 'package:rallybuddy/functions/HeaderText.dart';
import 'package:rallybuddy/functions/roundedbuttons.dart';
import 'package:geolocator/geolocator.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:rallybuddy/NavBar.dart';

class Admin extends StatefulWidget {
  const Admin({Key? key}) : super(key: key);



  @override
  _AdminState createState() => _AdminState();
}
//-----------------------------------------------------------------------------------------
class _AdminState extends State<Admin> {
  bool showSpinner = false;
  double longitude = 0;
  double latitude = 0;
  late Position position;


  @override
  void initState() {
    super.initState();
    getLocation().whenComplete(() {
      setState(() {
        longitude = position.longitude.toDouble();
        latitude = position.latitude.toDouble();
      });
    });
  }

  Future<Position> getLocation() async {
    bool serviceEnabled;
    LocationPermission permission;
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled.');
    }
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }
    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }
    //Permission ok, get Co-ords
   // position


    return position = (await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high));


  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        title: const Text('Benidorm or Bust - Rally Buddy'),
      ),
      backgroundColor: Colors.black,
 //----------------------------------------------------------------------------
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(height: 30),
              SizedBox(
                child: Image.asset('assets/comms.png'),
                width: double.infinity,
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                 HeaderText(headtext: 'Admin Assistance', fontosize: 25)
                ],
              ),
              SizedBox(
                height: 20.0,
              ),

              Text(
                'If you have broken down, or need to contact the Bob Admin Team The button below will contact the Admin team by Phone',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18),
              ),


              SizedBox(height: 20),
              Text(
                'Your Current Location is ',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
           Text('Latitude : $latitude',
             textAlign: TextAlign.center,style: TextStyle(fontSize: 20)),
              Text('Longitude : $longitude',
                  textAlign: TextAlign.center,style: TextStyle(fontSize: 20)),
              RoundedButton(
                title: 'Show Me (Google Maps)',
                colour: Colors.lightBlueAccent,
                onPressed: () {
                  _launchMapsUrl(longitude, latitude );
                },
              ),
              SizedBox(height: 15),
              Text('If you press the \'Copy to Clipboard\' button below, it will copy the Longitude and Latitude onto your clipboard in the correct format for google maps. You can paste this into whatever chat app you are using.' ),
              RoundedButton(
                title: 'Copy Longitude and Latitude to Clipboard',
                colour: Colors.lightBlueAccent,
                onPressed: () {
                  Clipboard.setData(ClipboardData(text: '$latitude $longitude'));

                  Fluttertoast.showToast(msg: 'Longitude and Latitude Copied to Clipboard',gravity: ToastGravity.CENTER ,toastLength: Toast.LENGTH_SHORT, fontSize: 40);
                },
              ),
SizedBox(height: 15),
              Text(
                  'Bob Admin',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18)),
              SizedBox(height: 15),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  RoundedButton(
                    title: 'Phone',
                    colour: Colors.orange,
                    onPressed: () {
                      _tel2('tel:07398998915');
                    },
                  ),

                ],
              ),
             // HomeButton()
            ],
          ),
        ),
      ),
    );
  }
}

void _tel2(String lat) async {
  final url = lat;
  if (!await launch(url)) throw 'Could not launch $url';
}

void _launchMapsUrl(double lat, double lon) async {
  final url = 'https://www.google.com/maps/dir/?api=1&destination=$lat,$lon';

  if (!await launch(url)) throw 'Could not launch $url';

}