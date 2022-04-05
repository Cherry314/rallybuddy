import 'package:flutter/material.dart';
import 'package:rallybuddy/functions/roundedbuttons.dart';
import 'package:rallybuddy/functions/globals.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:rallybuddy/NavBar.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ConfirmHotelChange extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: NavBar(),
        appBar: AppBar(
          title: const Text('Benidorm or Bust - Rally Buddy'),
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              SizedBox(height: 50),
              Text('Confirm Hotel change',
                  textAlign: TextAlign.center, style: TextStyle(fontSize: 18)),
              Center(),
              //           Text('Thank you.',
              //               textAlign: TextAlign.center, style: TextStyle(fontSize: 18)),
              Text('You are about to change a Hotel Destination on',
                  textAlign: TextAlign.center, style: TextStyle(fontSize: 18)),
              Text('Day $hotelDayTo',
                  textAlign: TextAlign.center, style: TextStyle(fontSize: 22)),
              Divider(color: Colors.white),
              Text('From',
                  textAlign: TextAlign.center, style: TextStyle(fontSize: 22)),
              Text(hotelNameFrom,textAlign: TextAlign.center, style: TextStyle(fontSize: 20, color: Colors.yellow),),
              Text(hotelAddFrom,textAlign: TextAlign.center, style: TextStyle(fontSize: 20),),
              Text(hotelLatFrom.toString(),textAlign: TextAlign.center, style: TextStyle(fontSize: 20),),
              Text(hotelLonFrom.toString(),textAlign: TextAlign.center, style: TextStyle(fontSize: 20),),
              Divider(color: Colors.white),
              Text('To',
                  textAlign: TextAlign.center, style: TextStyle(fontSize: 22)),
              Text(hotelNameTo,textAlign: TextAlign.center, style: TextStyle(fontSize: 20, color: Colors.yellow),),
              Text(hotelAddTo,textAlign: TextAlign.center, style: TextStyle(fontSize: 20),),
              Text(hotelLatTo.toString(),textAlign: TextAlign.center, style: TextStyle(fontSize: 20),),
              Text(hotelLonTo.toString(),textAlign: TextAlign.center, style: TextStyle(fontSize: 20),),
              Divider(color: Colors.white),
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
                    title: 'Make Change',
                    colour: Colors.lightBlueAccent,
                    onPressed: () {
                      _saveHotel(hotelNameTo, hotelAddTo, hotelLatTo, hotelLonTo, hotelDayTo);
                      Fluttertoast.showToast(msg: 'Hotel Updated',gravity: ToastGravity.CENTER ,toastLength: Toast.LENGTH_SHORT, fontSize: 40);
                      Navigator.pushNamed(context, 'hotels');
                    },
                  ),

                ],

              ),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
void _saveHotel(String hotelName, String hotelAdd,  hotelLat, double hotelLon, String hotelDay) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  // setState(() {
  prefs.setString('hotelName$hotelDay', hotelNameTo);
  prefs.setString('hotelAdd$hotelDay', hotelAddTo);
  prefs.setDouble('hotelLat$hotelDay', hotelLatTo);
  prefs.setDouble('hotelLon$hotelDay', hotelLonTo);
  prefs.setString('hotelDay$hotelDay', hotelDayTo);
  if (hotelDayTo == '1') {hotelName1 = hotelNameTo;
  hotelAdd1 = hotelAddTo; hotelLat1 = hotelLatTo; hotelLon1 = hotelLonTo;}

  if (hotelDayTo == '2') {hotelName2 = hotelNameTo;
  hotelAdd2 = hotelAddTo; hotelLat2 = hotelLatTo; hotelLon2 = hotelLonTo;

  }
  if (hotelDayTo == '3') {hotelName3 = hotelNameTo;
  hotelAdd3 = hotelAddTo; hotelLat3 = hotelLatTo; hotelLon3 = hotelLonTo;
  }

  if (hotelDayTo == '4') {hotelName4 = hotelNameTo;
  hotelAdd4 = hotelAddTo; hotelLat4 = hotelLatTo; hotelLon4 = hotelLonTo;
  }

}
