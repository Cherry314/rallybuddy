import'package:flutter/material.dart';
class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.only(),
        children: [
          UserAccountsDrawerHeader(
              accountName: Text('Admin Team'),
              accountEmail: Text('admin@benidormorbust.com'),
          currentAccountPicture: CircleAvatar(
            child: ClipOval(
              child:Image.asset('assets/logo.gif',
              width: 90,
                  height:90,
              fit: BoxFit.cover,
              ),

            ),
          ),
         decoration: BoxDecoration(
           image: DecorationImage(
             image: AssetImage(
               'assets/europe.jpg'
             ),
             fit: BoxFit.cover,
           ),
         ),
          ),
          ListTile(
            leading: Icon(Icons.map),
            title: Text('Driving Routes'),
            onTap: ()=> Navigator.pushNamed(context, '/dayinit'),
          ),
          ListTile(
            leading: Icon(Icons.map),
            title: Text('Evening Meet-up\'s'),
            onTap: ()=> Navigator.pushNamed(context, '/eveinit'),
          ),
          ListTile(
            leading: Icon(Icons.hotel_outlined),
            title: Text('Hotels'),
            onTap: ()=> Navigator.pushNamed(context, 'hotels'),
          ),
          ListTile(
            leading: Icon(Icons.car_repair),
            title: Text('Breakdown'),
            onTap: ()=> Navigator.pushNamed(context, 'admin'),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.info),
            title: Text('Information'),
            onTap: ()=> null // Navigator.pushNamed(context, 'infoinit'),
          ),
          ListTile(
            leading: Icon(Icons.remove),
            title: Text('    Safe and Legal'),
            onTap: ()=> Navigator.pushNamed(context, 'safelegal'),
          ),
          ListTile(
            leading: Icon(Icons.remove),
            title: Text('    What Do I Need'),
            onTap: ()=> Navigator.pushNamed(context, 'need'),
          ),
          ListTile(
            leading: Icon(Icons.remove),
            title: Text('    The Ferry'),
            onTap: ()=> Navigator.pushNamed(context, 'ferry'),
          ),
          ListTile(
            leading: Icon(Icons.remove),
            title: Text('    Charities'),
            onTap: ()=> Navigator.pushNamed(context, 'charity'),
          ),
          ListTile(
            leading: Icon(Icons.remove),
            title: Text('    Contact'),
            onTap: ()=> Navigator.pushNamed(context, 'general'),
          ),

          Divider(),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: ()=> Navigator.pushNamed(context, 'settings_menu'),
          ),

        ],
      ),
    );
  }
}
