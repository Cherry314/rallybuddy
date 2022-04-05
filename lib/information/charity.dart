import 'package:flutter/material.dart';
import 'package:rallybuddy/NavBar.dart';
import 'package:rallybuddy/functions/HeaderText.dart';

class Charity extends StatefulWidget {
  @override
  _CharityState createState() => _CharityState();
}

const activeCardColour = Color(0xFF1D1E33);
const inactiveCarColour = Colors.blueGrey;

class _CharityState extends State<Charity> {


  bool pressAttention = false;

  late String email;
  bool loggedIn = false;



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: NavBar(),
        appBar: AppBar(
          title: const Text('Benidorm or Bust - Rally Buddy'),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 30),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(height: 30),
                HeaderText(headtext: 'Charities', fontosize: 30),
                SizedBox(height: 20),
                Text(''),
                Text('If you are wanting to raise money for a local or national charity we will give you all the help you need.', style: TextStyle(fontSize: 18),),
                Text(''),
                Text('Once you have picked the charity you want to fund raise for then you can let us know, if you canget there logo sent to us, we can put this on your sponsor forms. Then we will send this out to you to get going. If the charity you would like to fund raise for needs any info from us, then just let us know.', style: TextStyle(fontSize: 18),),
                Text(''),
                Text('If you don\'t have a charity in your area, we raise money for our local Prince of Wales Hospice in Pontefract, West Yorkshire, who withour funding like this would not be able to keep open.', style: TextStyle(fontSize: 18),),
                Text(''),
                Text('Please would you tell us how much you raised on the rally as we would like to work out how much we all raised as a total for the entire event.', style: TextStyle(fontSize: 18),),
                Text(''),
                Text('If you need to contact Admin please use the Contact Page', style: TextStyle(fontSize: 18),),
                Text(''),
                Text(''),
                Text(''),
                Text(''),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
