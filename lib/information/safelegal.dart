import 'package:flutter/material.dart';
import 'package:rallybuddy/NavBar.dart';
import 'package:rallybuddy/functions/HeaderText.dart';

class SafeLegal extends StatefulWidget {
  @override
  _SafeLegalState createState() => _SafeLegalState();
}
const activeCardColour = Color(0xFF1D1E33);
const inactiveCarColour = Colors.blueGrey;

class _SafeLegalState extends State<SafeLegal> {

  bool pressAttention = false;
  late String email;
  bool loggedIn = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 2,horizontal: 30),
        child: Scaffold(
          drawer: NavBar(),
          appBar: AppBar(
            title: const Text('Benidorm or Bust - Rally Buddy'),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(height: 30),
                HeaderText(headtext: 'Safe and Legal', fontosize: 30),
                SizedBox(height: 20),
                Text('Things you need to Know to be Safe and legal', style: TextStyle(fontSize: 18),),
                Text(''),
                Text('Documents you should take with you.',style: TextStyle(color: Colors.green, fontSize: 18)),
                Text('A valid full (not provisional) photocard driving licence.', style: TextStyle(fontSize: 18),),
                Text('The original registration document, Current MOT certificate, Insurance Certificate and your Passport.', style: TextStyle(fontSize: 18),),
                Text(''),
                Text('Drinking and Driving',style: TextStyle(color: Colors.green, fontSize: 18)),
                Text('There is only one safe rule – if you drink, don\'t drive. Laws are strict and the penalties are severe.', style: TextStyle(fontSize: 18),),
                Text(''),
                Text('Think \'RIGHT\'',style: TextStyle(color: Colors.green, fontSize: 18)),
                Text('It\'s easy to forget to drive on the right, particularly after doing something familiar, such as leaving a petrol station or car park.', style: TextStyle(fontSize: 18),),
                Text(''),
                Text('Reflective Jackets',style: TextStyle(color: Colors.green, fontSize: 18)),
                Text('It is now compulsory in many European countries for visiting motorists to carry/wear reflective jackets. (This is per person not per car)', style: TextStyle(fontSize: 18),),
                Text(''),
                Text('Headlights',style: TextStyle(color: Colors.green, fontSize: 18)),
                Text('If you\'re driving to the Continent and using headlights then you must adjust the headlamp beam pattern to suit driving on the right so that the dipped beam doesn\'t dazzle oncoming drivers.', style: TextStyle(fontSize: 18),),
                Text(''),
                Text('Warning Triangle(s)',style: TextStyle(color: Colors.green, fontSize: 18)),
                Text('It is compulsory in many European countries for visiting motorists to carry a warning triangle (TWO IN SPAIN). Our country-by-country advice includes details of specific national requirements - you should check this for the countries you\'re visiting.', style: TextStyle(fontSize: 18),),
                Text(''),
                Text('Tyres',style: TextStyle(color: Colors.green, fontSize: 18)),
                Text('Like the UK, most countries require a minimum tread depth of 1.6mm over the central three-quarters of the tread and around the whole circumference. We recommend a minimum of 2mm but consider changing tyres if the tread is down to 3mm before you go. Tyres wear out quickly after they get down to 3mm.', style: TextStyle(fontSize: 18),),
                Text(''),
                Text('GB Sticker',style: TextStyle(color: Colors.green, fontSize: 18)),
                Text('Compulsory and failure to comply could result in an on-the-spot fine. Euro-plates - number plates that include the GB euro-symbol - have been legal since March 2001 and make display of a conventional sticker unnecessary within the EU.', style: TextStyle(fontSize: 18),),
                Text(''),
                Text('Emergency Contact',style: TextStyle(color: Colors.green, fontSize: 18)),
                Text('112 is a European emergency call number you can dial in the 27 Member States of the European Union in case of accident, assault or in any other distress situation.', style: TextStyle(fontSize: 18),),
                Text(''),
                Text('Medical Treatment',style: TextStyle(color: Colors.green, fontSize: 18)),
                Text('Generally you can get urgent medical treatment at reduced cost, from the health-care schemes of those countries with which the UK has health-care arrangements. You\'ll find details in the Department of Health booklet \'Health Advice for Travellers\', available from any main post office. Don\'t rely exclusively on these arrangements, as the cover provided under the respective national schemes is not always comprehensive – and the cost of bringing a person back to the UK in the event of illness or death is never covered. Make sure you have adequate travel insurance.', style: TextStyle(fontSize: 18),),
                Text(''),
                Text('Glasses for driving',style: TextStyle(color: Colors.green, fontSize: 18)),
                Text('If you wear glasses for driving you have to have a spare pair in your car.(2 pair’s in total)', style: TextStyle(fontSize: 18),),
                Text(''),
                Text('Mobile Phones',style: TextStyle(color: Colors.green, fontSize: 18)),
                Text('The use of hand-held mobile phones while driving is prohibited in many countries.', style: TextStyle(fontSize: 18),),
                Text(''),
                Text('Spare Bulb Kit',style: TextStyle(color: Colors.green, fontSize: 18)),
                Text('Spare bulb kits are not compulsory in all of Europe but it makes sense to carry one just in case.', style: TextStyle(fontSize: 18),),
                Text(''),
                Text('Breathalysers (France)',style: TextStyle(color: Colors.green, fontSize: 18)),
                Text('Approved breathalyser must be in you car at all times at least a twin pack as the rule is you must test your self if you have had a drink but must have an unused one in your car.', style: TextStyle(fontSize: 18),),
                Text(''),
                Text(''),
                Text('Most things you need can be found very cheaply on ebay etc.', style: TextStyle(fontSize: 18),),
                Text(''),



              ],
            ),
          ),
        ),
      ),
    );
  }
}