import 'package:flutter/material.dart';
import 'package:rallybuddy/functions/roundedbuttons.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:rallybuddy/functions/globals.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:rallybuddy/functions/constants.dart';
import 'package:rallybuddy/NavBar.dart';
class ManualHotelChange extends StatefulWidget {
  const ManualHotelChange({Key? key}) : super(key: key);

  @override
  _ManualHotelChangeState createState() => _ManualHotelChangeState();
}

class _ManualHotelChangeState extends State<ManualHotelChange> {
  final GlobalKey<FormBuilderState> _change = GlobalKey<FormBuilderState>();
  String hotelDayValue= 'Day 1 - Rouen';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: NavBar(),
        appBar: AppBar(
          title: const Text('Benidorm or Bust - Rally Buddy'),
        ),
        body: FormBuilder(
          key: _change,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SizedBox(height: 50),
                Text('Manually Change Hotel',
                    textAlign: TextAlign.center, style: TextStyle(fontSize: 18)),
                Center(),
                //           Text('Thank you.',
                //               textAlign: TextAlign.center, style: TextStyle(fontSize: 18)),
                Text('To enter a Hotel Manually, you will need the Latidude and Longitude.',
                    textAlign: TextAlign.center, style: TextStyle(fontSize: 18)),
                Text(
                    'If you don\'t have it, you can get it using the button below. Just enter the Addressof the hotel on the website.',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18)),

                RoundedButton(
                  title: 'www.latlong.net',
                  colour: Colors.lightBlueAccent,
                  onPressed: () {
                    _launchLatLon();
                  },
                ),

                SizedBox(height: 30),
                Text(
                    'Select which day you want to change',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18)),
                DropdownButton<String>(
                  value: hotelDayValue,
                  onChanged: (String? newValue) {
                    setState(() {
                      hotelDayValue = newValue!;
                    });
                  },
                  items: <String>['Day 1 - Rouen', 'Day 2 - Poitiers', 'Day 3 - Pau', 'Day 4 - Zaragoza']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value, style: TextStyle(fontSize: 20)),
                    );
                  })
                      .toList(),
                ),
                SizedBox(height: 15),
                FormBuilderTextField(
                  name: 'Hotel Name',
                  textAlign: TextAlign.center,
                  onChanged: (value) {
                    hotelNameTo = value!;
                  },
                  decoration: kTextFieldDecoration.copyWith(
                      hintText: 'Enter the Hotel name'),
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(context, errorText: 'You must enter a valid hotel Name')
                  ]),
                ),
                FormBuilderTextField(
                  name: "Hotel Address",
                  textAlign: TextAlign.center,
                  onChanged: (value) {
                    hotelAddTo = value!;
                  },
                  decoration: kTextFieldDecoration.copyWith(
                      hintText: 'Enter the Hotel Address'),
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(context, errorText: 'You must enter the Hotel Address')
                  ]),
                ),
                FormBuilderTextField(
                  name: "Hotel LATITUDE",
                  textAlign: TextAlign.center,
                  onChanged: (value) {
                    hotelLatTo = double.parse(value!);
                  },
                  decoration: kTextFieldDecoration.copyWith(
                      hintText: 'Enter the Hotel LATITUDE'),
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.numeric(context, errorText: 'You must enter a Valid Latitude EG 41.13521 (no letters)')
                  ]),
                ),
                FormBuilderTextField(
                  name: "Hotel LONGITUDE",
                  textAlign: TextAlign.center,
                  onChanged: (value) {
                    hotelLonTo = double.parse(value!);
                  },
                  decoration: kTextFieldDecoration.copyWith(
                      hintText: 'Enter the Hotel LONGITUDE'),
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.numeric(context, errorText: 'You must enter a Valid Longitude EG -1.13521 (no letters)')
                  ]),
                ),
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
                      title: 'Change Hotel',
                      colour: Colors.lightBlueAccent,
                      onPressed: () {
                        _change.currentState!.save();
                        if (_change.currentState!.validate()) {


                          if (hotelDayValue == 'Day 1 - Rouen') {hotelNameFrom = hotelName1;
                          hotelAddFrom = hotelAdd1; hotelLatFrom = hotelLat1; hotelLonFrom = hotelLon1; hotelDayTo = '1';}
                          if (hotelDayValue == 'Day 2 - Poitiers') {hotelNameFrom = hotelName2;
                          hotelAddFrom = hotelAdd2; hotelLatFrom = hotelLat2; hotelLonFrom = hotelLon2;hotelDayTo = '2';}
                          if (hotelDayValue == 'Day 3 - Pau') {hotelNameFrom = hotelName3;
                          hotelAddFrom = hotelAdd3; hotelLatFrom = hotelLat3; hotelLonFrom = hotelLon3;hotelDayTo = '3';}
                          if (hotelDayValue == 'Day 4 - Zaragoza') {hotelNameFrom = hotelName4;
                          hotelAddFrom = hotelAdd4; hotelLatFrom = hotelLat4; hotelLonFrom = hotelLon4;hotelDayTo = '4';}


                          Navigator.pushNamed(context, 'confirm_change');

                        }},
                    ),
                  ],
                ),

                SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
void _launchLatLon() async {
  const url = 'https://www.latlong.net/';
  if (!await launch(url)) throw 'Could not launch $url';
}
