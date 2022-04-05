import 'package:flutter/material.dart';
import 'package:rallybuddy/functions/roundedbuttons.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:rallybuddy/NavBar.dart';
import 'package:rallybuddy/functions/HeaderText.dart';


class about extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.30),
        child: Scaffold(
          drawer: NavBar(),
          appBar: AppBar(
            title: const Text('Benidorm or Bust - Rally Buddy'),
          ),
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                const SizedBox(height: 50),

                  HeaderText(headtext: 'Instructions',fontosize: 30),


                const Text('Please read before continuing.',
                    textAlign: TextAlign.center, style: TextStyle(fontSize: 22, color:Colors.yellow)),
                Divider(color: Colors.white),
                const Text(
                    'This app has all the information you need to know for the whole Rally. as well as a pre-programmed Satnav (using Google Maps) As you cannot use postcodes out of the uk, it is difficult to program the destinations into your Sat nav.',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18)),
                Divider(color: Colors.white),
                const Text(
                    'This app contains all the Hotels recommended by the Admin team, you can select the hotel and the app with give you directions to it from where you are (the App will open Google Maps)',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18)),
                Divider(color: Colors.white),

                const Text(
                    'The App will default to the main hotel until you change it. You can also enter any Hotel and enter the co-ordinates manually. ',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18)),
                Divider(color: Colors.white),
                const Text(
                    'I also put an Emergency button, this allows you to telephone or text the bob team and also allows you to copy your location and send it to the team.',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18)),
                Divider(color: Colors.white),

                const Text(
                    'If you have any Ideas for the BoB App for future rallys, please let the Bob team know.',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18)),
                Divider(color: Colors.white),
                const Text(
                    'We hope you find this app useful, and safe driving.',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18)),
                SizedBox(height: 25),

                RoundedButton(
                  title: 'Continue to App',
                  colour: Colors.lightBlueAccent,
                  onPressed: () {
                    Navigator.pushNamed(context, '/');
                  },
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
