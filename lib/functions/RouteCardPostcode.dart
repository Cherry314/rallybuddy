import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class RouteCardPostcode extends StatelessWidget {
  const RouteCardPostcode(this.txt, this.colour, this.txtsize, this.postcode);
  final String txt;
  final Color colour;
  final double txtsize;
  final String postcode;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: () {
          _launchMapsUrl(postcode);
        },
        child: Text(
          txt,
          style: TextStyle(fontSize: txtsize, color: colour),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

void _launchMapsUrl(String postcode) async {
  final url = 'https://www.google.com/maps/dir/?api=1&destination=$postcode';

  if (!await launch(url)) throw 'Could not launch $url';

}
