import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ImageLink extends StatelessWidget {
  ImageLink(this.pic, this.size, this.lon, this.lat);
  final String pic;
  final double size;
  final double lon;
  final double lat;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: () {
          _launchMapsUrl(lon, lat);
        },
        child: Image.asset('assets/$pic', width: size),
      ),
    );
  }
}

void _launchMapsUrl(double lat, double lon) async {
  final url = 'https://www.google.com/maps/dir/?api=1&destination=$lat,$lon';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}