import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HotelLink extends StatelessWidget {
  const HotelLink(this.txt, this.txtsize, this.webaddress);
  final String txt;
  final double txtsize;
  final String webaddress;


  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: () {
          _launchMapsUrl(webaddress);
        },
        child: Text(
          txt,
          style: TextStyle(fontSize: 20, color: Colors.yellow),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

void _launchMapsUrl(String lat) async {
  final url = 'https://www.booking.com/$lat';

  if (!await launch(url)) throw 'Could not launch $url';
}
