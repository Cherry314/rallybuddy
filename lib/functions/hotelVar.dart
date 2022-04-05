import 'package:flutter/material.dart';
import 'package:rallybuddy/functions/globals.dart';

class HotelVar extends StatelessWidget {
  HotelVar(this.hotelName, this.hotelAdd, this.hotelLat, this.hotelLon, this.hotelDay);
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
          Navigator.pushNamed(context, 'confirm_change');
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

  hotelNameTo = hotelName;
  hotelAddTo = hotelAdd;
  hotelLatTo = hotelLat;
  hotelLonTo = hotelLon;
  hotelDayTo = hotelDay;

  if (hotelDayTo == '1') {hotelNameFrom = hotelName1;
  hotelAddFrom = hotelAdd1; hotelLatFrom = hotelLat1; hotelLonFrom = hotelLon1;}

  if (hotelDayTo == '2') {hotelNameFrom = hotelName2;
  hotelAddFrom = hotelAdd2; hotelLatFrom = hotelLat2; hotelLonFrom = hotelLon2;}

  if (hotelDayTo == '3') {hotelNameFrom = hotelName3;
  hotelAddFrom = hotelAdd3; hotelLatFrom = hotelLat3; hotelLonFrom = hotelLon3;}

  if (hotelDayTo == '4') {hotelNameFrom = hotelName4;
  hotelAddFrom = hotelAdd4; hotelLatFrom = hotelLat4; hotelLonFrom = hotelLon4;}
}