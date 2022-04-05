import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class RouteCardLink extends StatelessWidget {
  const RouteCardLink(this.txt, this.colour, this.txtsize, this.lon, this.lat);
  final String txt;
  final Color colour;
  final double txtsize;
  final double lon;
  final double lat;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: () {
          _launchMapsUrl(lon, lat);
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

void _launchMapsUrl(double lat, double lon) async {
  final url = 'https://www.google.com/maps/dir/?api=1&destination=$lat,$lon';

  if (!await launch(url)) throw 'Could not launch $url';

}
