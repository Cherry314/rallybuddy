import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:toast/toast.dart';
import 'package:rallybuddy/functions/globals.dart';

class HotelSave extends StatelessWidget {
  HotelSave(this.hotelName, this.hotelAdd, this.hotelLat, this.hotelLon, this.hotelDay);
  final String hotelName;
  final String hotelAdd;
  final double hotelLat;
  final double hotelLon;
  final String hotelDay;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: () {
          _saveHotel(hotelName, hotelAdd, hotelLat, hotelLon, hotelDay);
          Toast.show('Hotel Added to itinerary', context, textColor: Colors.black, backgroundColor: Colors.white, duration: Toast.LENGTH_LONG, gravity: Toast.CENTER);
        },
        child: Text('Click to add to Route',
          style: TextStyle(fontSize:20, color: Colors.lightBlueAccent),
          textAlign: TextAlign.center,
        ),
      ),

    );
  }
}

void _saveHotel(String hotelName, String hotelAdd,  hotelLat, double hotelLon, String hotelDay) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  // setState(() {
  prefs.setString('hotelName$hotelDay', hotelName);
  prefs.setString('hotelAdd$hotelDay', hotelAdd);
  prefs.setDouble('hotelLat$hotelDay', hotelLat);
  prefs.setDouble('hotelLon$hotelDay', hotelLon);
  prefs.setString('hotelDay$hotelDay', hotelDay);
  if (hotelDay == '1') {hotelName1 = hotelName;
  hotelAdd1 = hotelAdd; hotelLat1 = hotelLat; hotelLon1 = hotelLon;}

  if (hotelDay == '2') {hotelName2 = hotelName;
  hotelAdd2 = hotelAdd; hotelLat2 = hotelLat; hotelLon2 = hotelLon;

  }
  if (hotelDay == '3') {hotelName3 = hotelName;
  hotelAdd3 = hotelAdd; hotelLat3 = hotelLat; hotelLon3 = hotelLon;
  }

  if (hotelDay == '4') {hotelName4 = hotelName;
  hotelAdd4 = hotelAdd; hotelLat4 = hotelLat; hotelLon4 = hotelLon;
  }

}

