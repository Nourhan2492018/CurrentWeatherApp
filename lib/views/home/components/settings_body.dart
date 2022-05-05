
import 'package:flutter/material.dart';
import 'package:weather/components/navigator_app.dart';
import 'package:weather/components/text_info.dart';
import 'package:weather/views/home/components/home_body.dart';
import 'package:weather/views/home/components/search_body.dart';

class SettingBody extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      elevation: 5,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text('',
              style: TextStyle(color: Colors.blue, fontSize: 25),
            ),
            decoration: BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                    fit: BoxFit.contain,
                    image: AssetImage('assets/images/w.png'))),
          ),
          ListTile(
            iconColor: Colors.blue,
            leading: Icon(Icons.input),
            title: TextInfo('Welcome', 20,FontStyle.normal, Colors.blue),
            onTap: () => {},
          ),
          ListTile(
            iconColor: Colors.blue,
            leading: Icon(Icons.verified_user),
            title:TextInfo('Profile', 20, FontStyle.normal, Colors.blue),
            onTap: ()  {
              AppNavigator.customNavigator(context: context, screen: SearchBody(), finish: false);
            },
          ),
          ListTile(
            iconColor: Colors.blue,
            leading: Icon(Icons.location_on_outlined),
            title:TextInfo('Location', 20,FontStyle.normal, Colors.blue),
            onTap: () {
              AppNavigator.customNavigator(context: context, screen: SearchBody(), finish: false);
            },
          ),
          ListTile(
            iconColor: Colors.blue,
            leading: Icon(Icons.exit_to_app),
            title:TextInfo('Logout', 20, FontStyle.normal, Colors.blue),
            onTap: () => {Navigator.of(context).pop()},
          ),
        ],
      ),
    );
  }
}
