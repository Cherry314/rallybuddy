import 'package:flutter/material.dart';
import 'package:rallybuddy/functions/HeaderText.dart';
import 'package:rallybuddy/functions/roundedbuttons.dart';
import 'package:rallybuddy/functions/hotellink.dart';
import 'package:rallybuddy/functions/HotelVar.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:rallybuddy/NavBar.dart';
class Hotels extends StatefulWidget {
  const Hotels({Key? key}) : super(key: key);

  @override
  _HotelsState createState() => _HotelsState();
}

const activeCardColour = Color(0xFF1D1E33);
const inactiveCarColour = Colors.blueGrey;

class _HotelsState extends State<Hotels> {
  bool pressAttention = false;
  late String email;
  bool loggedIn = false;
//  String hotel ="";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 30),
        child: Scaffold(
          drawer: NavBar(),
          appBar: AppBar(
            title: const Text('Benidorm or Bust - Rally Buddy'),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(height: 30),
                HeaderText(headtext: 'Hotel List 2022', fontosize: 30),
                SizedBox(height: 20),
                //RouteCardHead('Hotel List 2020', Colors.white, 30),
                Text(
                    'This is a list of recommended Hotels of varying price so you can pick the ones that fit your budget & needs. there some Out of Town and some In Town', style: TextStyle(fontSize: 18)),
                Text(''),
                Text(
                    'If you press the Hotel Name (in Yellow) It will open Booking.com on that hotel. (click back to return to this App) ', style: TextStyle(fontSize: 18)),
                Text(''),
                Text(
                    'If you click the BLUE \'Click to Add To Route\' It will replace the current Hotel with the one that you have selected.', style: TextStyle(fontSize: 18)),
                Text(''),
                Text('This includes the coordinates for Google Maps.', style: TextStyle(fontSize: 18)),
                Text(''),
                Text('If you have a Hotel booked that is not on this list, you can manually enter the coordinates using the button below.', style: TextStyle(fontSize: 18)),
                Text(''),
                Text('You can change the Hotels as often as you wish, there is also a Reset option in the settings menu', style: TextStyle(fontSize: 18)),
                RoundedButton(
                  title: 'Enter a Hotel Manually',
                  colour: Colors.lightBlueAccent,
                  onPressed: () {
                    Navigator.pushNamed(context, 'manual_hotel_change');
                  },
                ),
                Text(''),
                Text(''),
                Divider(color: Colors.white),
                HeaderText(headtext: 'Day 1 - 10th May', fontosize: 35),
                // Center(
                //
                //     child: Text(
                //       'Rouen',
                //       style: TextStyle(fontSize: 20, color: Colors.green),
                //     )),
                // Center(
                //     child: Text(
                //       'Rouen Day 1 - Out of Town',
                //       style: TextStyle(fontSize: 20, color: Colors.green),
                //     )),

                //         GetHotelSP('1'),
                Text('Rouen Day 1 - Out of Town'),
                HotelLink('Campanile Rouen Sud - Zénith', 30,
                    'hotel/fr/campanile-rouen-parc-expo.en-gb.html'),
                HotelLink('Parc Expo Rouen', 30,
                    'hotel/fr/campanile-rouen-parc-expo.en-gb.html'),

                Text('3 Star, 7.9 Good, Free Parking'),
                HotelVar(
                    'Campanile Rouen Sud',
                    'Rue De La Mare Sansoure, 76800 Saint-Étienne-du-Rouvray, France ',
                    49.434750,
                    1.074230,
                    '1'),
                Divider(color: Colors.white),

                Text(''),
                Text('Rouen Day 1 - Out of Town'),
                HotelLink('ibis Rouen', 30,
                    'hotel/fr/ibis-rouen-sud-zenith.en-gb.html'),
                HotelLink('Parc Expos Zenith', 30,
                    'hotel/fr/ibis-rouen-sud-zenith.en-gb.html'),
                Text('3 Star, 7.6 Good, Free Parking'),
                HotelVar(
                    'ibis Rouen Parc',
                    '29, Avenue Maryse Bastié, 76800 Saint-Étienne-du-Rouvray, France',
                    49.3917913,
                    1.0592379,
                    '1'),
                Divider(color: Colors.white),

                Text(''),
                Text('Rouen Day 1 - Out of Town'),
                HotelLink('B&B Hôtel Rouen', 30,
                    'hotel/fr/b-amp-b-rouen-parc-des-expos-zenith.en-gb.html'),
                HotelLink('Parc des Expos Zénith', 30,
                    'hotel/fr/b-amp-b-rouen-parc-des-expos-zenith.en-gb.html'),

                Text('2 Star, 7.7 Good, Free Parking'),
                HotelVar(
                    'B&B Hôtel Rouen Parc des Expos Zénith',
                    '42 Avenue des Canadiens, 76120 Le Grand-Quevilly, France',
                    49.399910,
                    1.063450,
                    '1'),
                Divider(color: Colors.white),
                Text(''),
                Text('Rouen Day 1 - Out of Town'),
                HotelLink('hotelF1 Rouen', 30,
                    'hotel/fr/hotelf1-rouen-sud-parc-expos.en-gb.html'),
                HotelLink('Sud Parc Expos', 30,
                    'hotel/fr/hotelf1-rouen-sud-parc-expos.en-gb.html'),
                Text('? Star, 5.9 Okay, Free Parking'),

                HotelVar(
                    'hotelF1 Rouen Sud Parc Expos',
                    '25 avenue des Canadiens, 76800 Saint-Étienne-du-Rouvray, France',
                    49.400130,
                    1.063800,
                    '1'),
                Divider(color: Colors.white),
                Text(''),
                // Center(
                //     child: Text(
                //       'Rouen In Town',
                //       style: TextStyle(fontSize: 20, color: Colors.green),
                //     )),
                Text('Rouen Day 1 - In Town'),
                HotelLink('B&B Hôtel Rouen', 30,
                    'hotel/fr/comforthotelrouencentre.en-gb.html'),
                HotelLink('Centre St Sever', 30,
                    'hotel/fr/comforthotelrouencentre.en-gb.html'),
                Text('3 Star, 7.1 Good, Parking, BoB team at at'),
                HotelVar(
                    'B&B Hôtel Rouen Centre St Sever',
                    '20 Place de L\'Eglise St-Sever, 76100 Rouen, France',
                    49.430590,
                    1.085290,
                    '1'),
                Divider(color: Colors.white),
                Text(''),
                Text('Rouen Day 1 - In Town'),
                HotelLink('ibis Rouen Centre', 30,
                    'hotel/fr/ibis-rouen-champ-de-mars.en-gb.html'),
                HotelLink('Champ de Mars', 30,
                    'hotel/fr/ibis-rouen-champ-de-mars.en-gb.html'),
                Text('3 Star, 8.4 Very Good, Parking'),
                HotelVar(
                    'ibis Rouen Centre Champ de Mars',
                    '12 Avenue Aristide Briand, 76000 Rouen, France',
                    49.435990,
                    1.103020,
                    '1'),
                Divider(color: Colors.white),
                Text(''),
                Text('Rouen Day 1 - In Town'),
                HotelLink(
                    'Comfort Hotel Rouen Alba **',
                    30,
                    'hotel/fr/albarouen.en-gb.html'),
                HotelLink(
                    'more basic, paid parking close by',
                    30,
                    'hotel/fr/albarouen.en-gb.html'),
                Text('2 Star, 7.4 Good, Parking'),
                HotelVar(
                    'Comfort Hotel Rouen Alba',
                    '12, place du Gaillardbois, 76000 Rouen, France',
                    49.438440,
                    1.094390,
                    '1'),
                Divider(color: Colors.white),
                Text(''),
                Text('Rouen Day 1 - In Town'),
                HotelLink(
                    'ibis Styles Rouen Centre Cathedrale ***',
                    30,
                    'hotel/fr/ibis-styles-rouen-centre-cathedrale.en-gb.html'),
                HotelLink(
                    'more basic, paid parking close by',
                    30,
                    'hotel/fr/ibis-styles-rouen-centre-cathedrale.en-gb.html'),
                Text('3 Star, 7.7 Good, Parking'),
                Text(''),

                HotelVar(
                    'ibis Styles Rouen Centre Cathedrale',
                    '9 Place De La Republique, 76000 Rouen, France',
                    49.437530,
                    1.096500,
                    '1'),
                Divider(color: Colors.white),
                Text(''),
                HeaderText(headtext: 'Day 2 11th May', fontosize: 35),
                // Center(
                //     child: Text(
                //       'Poitiers',
                //       style: TextStyle(fontSize: 20, color: Colors.green),
                //     )),
                // Center(
                //     child: Text(
                //       'Out of Town',
                //       style: TextStyle(fontSize: 20, color: Colors.green),
                //     )),
                Text(''),
                Text('Poitiers Day 2 - Out of Town'),
                HotelLink('ibis Poitiers Sud', 30,
                    'hotel/fr/ibis-poitiers-sud.en-gb.html'),
                Text('3 Star, 7.8 Good, Free Parking, Bob Team are at'),
                HotelVar(
                    'ibis Poitiers Sud',
                    '175 avenue du 8 Mai 1945, 86000 Poitiers, France',
                    46.550580,
                    0.302790,
                    '2'),
                Divider(color: Colors.white),
                Text(''),
                Text('Poitiers Day 2 - Out of Town'),
                HotelLink('Campanile Poitiers', 30,
                    'hotel/fr/campanile-poitiers.en-gb.html'),
                Text('3 Star, 7.6 Good, Free Parking'),
                HotelVar(
                    'Campanile Poitiers',
                    '228 Avenue Du 8 Mai 1945, 86000 Poitiers, France',
                    46.552910,
                    0.304870,
                    '2'),
                Divider(color: Colors.white),
                Text(''),
                Text('Poitiers Day 2 - Out of Town'),
                HotelLink('Kyriad Poitiers Sud', 30,
                    'hotel/fr/kyriad-poitiers-sud-aa-c-roport-xml.en-gb.html'),
                Text('3 Star, 7.7 Good, Free Parking'),
                HotelVar(
                    'Kyriad Poitiers Sud',
                    '182 Avenue du 8 Mai , 86000 Poitiers, France',
                    46.555020,
                    0.307200,
                    '2'),
                Divider(color: Colors.white),
                Text(''),
//                HotelLink('Ibis Style Poitiers Sud',20,'hotel/fr/ibis-styles-poitiers-centre.en-gb.html'),
//                Text('3 Star, 9.1 Superb, Free Parking'),
//                Text(''),
//                 Center(
//                     child: Text(
//                       'Poitiers In Town',
//                       style: TextStyle(fontSize: 20, color: Colors.green),
//                     )),
                Text('Poitiers Day 2 - In Town'),
                HotelLink('ibis Poitiers Centre *** (paid parking on site)', 30,
                    'hotel/fr/ibis-poitiers-centre.en-gb.html'),
                Text('3 Star, 7.6 Good, Parking'),
                HotelVar(
                    'ibis Poitiers Centre',
                    '15 rue du Petit Bonneveau, 86000 Poitiers, France',
                    46.578590,
                    0.338640,
                    '2'),
                Divider(color: Colors.white),
                Text(''),
                Text('Poitiers Day 2 - In Town'),
                HotelLink('ibis Styles Poitiers Centre', 30,
                    'hotel/fr/ibis-styles-poitiers-centre.en-gb.html'),
                Text('3 Star, 9.1 Superb, Parking'),
                HotelVar(
                    'ibis Styles Poitiers Centre',
                    '7 Rue Victor Hugo , 86000 Poitiers, France',
                    46.580620,
                    0.338020,
                    '2'),
                Divider(color: Colors.white),
                Text(''),
                Text('Poitiers Day 2 - In Town'),
                HotelLink('Mercure Poitiers Centre **** (paid parking on site)',
                    20, 'hotel/fr/mercure-poitiers-centre.en-gb.html'),
                Text('4 Star, 8.7 Fabulous, Parking'),
                HotelVar(
                    'Mercure Poitiers Centre',
                    '14 rue Edouard Grimaux, 86000 Poitiers, France',
                    46.583100,
                    0.339580,
                    '2'),
                Divider(color: Colors.white),
                Text(''),
                Text('Poitiers - In Town'),
                HotelLink(
                    'Best Western Poitiers Centre Le Grand Hôtel **** (paid parking on site)',
                    30,
                    'hotel/fr/grand-poitiers.en-gb.html'),
                Text('4 Star, 8.0 Very Good, Parking'),
                HotelVar(
                    'Best Western Poitiers Centre Le Grand Hôtel',
                    '28, rue Carnot, 86000 Poitiers, France',
                    46.578900,
                    0.338520,
                    '2'),
                Text(''),
                Divider(color: Colors.white),
                HeaderText(headtext: 'Day 3 12th May', fontosize: 35),
                // Center(
                //     child: Text(
                //       'Pau',
                //       style: TextStyle(fontSize: 20, color: Colors.green),
                //     )),
                // Center(
                //     child: Text(
                //       'Out of Town',
                //       style: TextStyle(fontSize: 20, color: Colors.green),
                //     )),
                Text(''),
                Text('Pau Day 3 - Out of Town'),

                HotelLink('Mercure Pau Palais des Sports **** (free parking)',
                    30, 'hotel/fr/mercure-pau-palais-des-sports.en-gb.html'),
                Text('4 Star, 8.5 Very Good, Free Parking'),
                HotelVar(
                    'Mercure Pau Palais des Sports',
                    '106, avenue de L\'Europe, 64000 Pau, France ',
                    43.329620,
                    -0.353910,
                    '3'),
                Divider(color: Colors.white),
                Text(''),
                Text('Pau Day 3 - Out of Town'),
                HotelLink(
                    'Kyriad Prestige Pau – Palais des Sports **** (free parking)',
                    30,
                    'hotel/fr/kyriad-prestige-pau-zenith-parc-expo.en-gb.html'),
                Text('4 Star, 9.1 Superb, Free Parking'),
                HotelVar(
                    'Kyriad Prestige Pau',
                    '2, rue Suzanne Lenglen, 64000 Pau, France',
                    43.331810,
                    -0.358960,
                    '3'),
                Divider(color: Colors.white),
                Text(''),
                Text('Pau Day 3 - Out of Town'),
                HotelLink(
                    'Hôtel Restaurant Le Relais - Pau Nord *** (free parking)',
                    30,
                    'hotel/fr/ha-tel-restaurant-le-relais.en-gb.html'),
                Text('3 Star, 8.1 Very Good, Free Parking'),
                HotelVar(
                    'Hôtel Restaurant Le Relais',
                    'Rue de Strasbourg, 64140 Lons, France',
                    43.328770,
                    -0.384740,
                    '3'),
                Divider(color: Colors.white),
                Text(''),
                Text('Pau - Out of Town'),
                HotelLink('Premiere Classe Pau Est-Bizanos ** (free parking)',
                    30, 'hotel/fr/premiere-classe-pau-bizanos.en-gb.html'),
                Text('2 Star, 7.9 Good, Free Parking'),
                HotelVar(
                    'Premiere Classe Pau Est-Bizanos',
                    'Avenue Du Commandant René Mouchotte, 64000 Pau, France',
                    43.305460,
                    -0.328770,
                    '3'),
                Divider(color: Colors.white),
                Text(''),
                // Center(
                //     child: Text(
                //       'Pau In Town',
                //       style: TextStyle(fontSize: 20, color: Colors.green),
                //     )),
                Text(''),
                Text('Pau Day 3 - In Town'),
                HotelLink('Best Western Hôtel Continental *** (BoB team are @)',
                    30, 'hotel/fr/bestwesternhotelcontinental.en-gb.htm'),
                Text('4 Star, 8.3 Very Good, Free Parking'),
                HotelVar(
                    'Best Western Hôtel Continental',
                    '2 rue Maréchal Foch, 64000 Pau, France',
                    43.297090,
                    -0.366740,
                    '3'),
                Divider(color: Colors.white),
                Text(''),
                Text('Pau Day 3 - In Town'),
                HotelLink('ibis Pau Centre *** (paid parking on site)', 30,
                    'hotel/fr/ibis-pau-centre.en-gb.html'),
                Text('3 Star, 7.7 Good, Parking'),
                HotelVar(
                    'ibis Pau Centre',
                    '26 Rue Samonzet, 64000 Pau, France',
                    43.298310,
                    -0.367750,
                    '3'),
                Divider(color: Colors.white),
                Text(''),
                Text('Pau Day 3 - In Town'),
                HotelLink(
                    'Hotel The Originals Pau Villa Montpensier *** (free parking)',
                    30,
                    'hotel/fr/inter-montpensier.en-gb.html'),
                Text('3 Star, 8.5 Very Good, Free Parking'),
                HotelVar(
                    'Hotel The Originals Pau Villa Montpensier',
                    '36, Rue Montpensier, 64000 Pau, France',
                    43.301220,
                    -0.373120,
                    '3'),
                Divider(color: Colors.white),
                Text(''),
                Text('Pau Day 3 - In Town'),
                HotelLink(
                    'Quality Hotel Pau Centre Bosquet **** (free parking)',
                    30,
                    'hotel/fr/pau-centre-bosquet.en-gb.html'),
                Text('4 Star, 8.7, Free Parking'),

                HotelVar(
                    'Quality Hotel Pau Centre Bosquet',
                    '80 rue Emile Garet Centre Bosquet, 64000 Pau, France',
                    43.298600,
                    -0.364320,
                    '3'),
                Divider(color: Colors.white),

                HeaderText(headtext: 'Day 4 13th May', fontosize: 35),
                Text(''),

                Center(
                    child: Text(
                      'Zaragoza',
                      style: TextStyle(fontSize: 20, color: Colors.green),
                    )),
                Center(
                    child: Text(
                      'All options are in Town',
                      style: TextStyle(fontSize: 20, color: Colors.green),
                    )),
                Text(''),
                Text('Zaragoza Day 4 - In Town'),
                HotelLink('Hotel Boutique Maza **  (paid parking close by)', 30,
                    'hotel/es/maza.en-gb.html'),
                Text('2 Star, 8.5 Very Good, Parking'),
                HotelVar(
                    'Hotel Boutique Maza',
                    'Plaza De España, 7, 50001 Zaragoza, Spain',
                    41.649770,
                    -0.875910,
                    '4'),
                Divider(color: Colors.white),
                Text(''),
                Text('Zaragoza Day 4 - In Town'),
                HotelLink('Ibis Zaragoza Centro ** (paid parking on site)', 30,
                    'hotel/es/ibis-zaragoza-centro.en-gb.html'),
                Text('2 Star, 8.5 Very Good, Parking'),
                HotelVar(
                    'Ibis Zaragoza Centro',
                    'Sobrarbe, 2, Arrabal, 50015 Zaragoza, Spain',
                    41.658650,
                    -0.874260,
                    '4'),
                Divider(color: Colors.white),
                Text(''),
                Text('Zaragoza Day 4 - In Town'),
                HotelLink(
                    'Ibis Styles Zaragoza Ramiro I *** (paid parking on site)',
                    30,
                    'hotel/es/ramiro-i.en-gb.html'),
                Text('3 Star, 8.4 Very Good, Parking'),
                HotelVar(
                    'Ibis Styles Zaragoza Ramiro I',
                    'Coso, 123, 50001 Zaragoza, Spain ',
                    41.651380,
                    -0.874580,
                    '4'),
                Divider(color: Colors.white),
                Text(''),
                Text('Zaragoza Day 4 - In Town'),
                HotelLink(
                    'Ibis Budget Zaragoza **  (paid cheaper parking on site)',
                    30,
                    'hotel/es/ibis-budget-zaragoza.en-gb.html'),
                Text('2 Star, 8.1 Very Good, Parking'),
                HotelVar(
                    'Ibis Budget Zaragoza',
                    'Maria Pilar Heras Dopereiro, 3, 50014 Zaragoza, Spain',
                    41.659590,
                    -0.862570,
                    '4'),
                Divider(color: Colors.white),
                Text(''),
                Text('Zaragoza Day 4 - In Town'),
                HotelLink(
                    'Aparthotel Los Girasoles **** (paid parking on site)',
                    30,
                    'hotel/es/hotellosgirasoleszaragoza.en-gb.html'),
                Text('4 Star, 8.6 Fabulous, Parking'),
                HotelVar(
                    'Aparthotel Los Girasoles',
                    'Avenida César Augusto, 27, 50004 Zaragoza, Spain',
                    41.653300,
                    -0.884590,
                    '4'),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
