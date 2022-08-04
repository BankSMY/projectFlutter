import 'package:flutter/material.dart';
import 'package:thunderbird/Login.dart';
import 'package:thunderbird/Products.dart';
import 'package:thunderbird/Profile.dart';
import 'package:thunderbird/Welcome.dart';

class AppDrawer extends StatelessWidget {
  // const AppDrawer({Key? key}) : super(key: key);
//
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        padding: EdgeInsets.symmetric(horizontal: 0.7),
        children: [
          DrawerHeader(child: Text('Menu')),
          ListTile(
            title: Text("Main"),
            onTap: () { Navigator.push(
                context,
                 MaterialPageRoute(
                   builder: (context) => Welcome(),
                 ),
                );},
          ),
          ListTile(
             leading: Image.asset(
              'icons/home.png',
              height: 25.0,
              width: 25.0,
            ),
            title: Text("Profile"),
            onTap: () {Navigator.push(
                context,
                 MaterialPageRoute(
                   builder: (context) => Profile(),
                 ),
                );},
          ),
          ListTile(
            leading: Image.asset(
              'icons/product.png',
              height: 25.0,
              width: 25.0,
            ),
            title: Text("Product"),
            onTap: () {Navigator.push(
                context,
                 MaterialPageRoute(
                   builder: (context) => Products(),
                 ),
                );},
          ),
          ListTile(
            leading: Image.asset(
              'icons/signout.png',
              height: 25.0,
              width: 25.0,
            ),
            title: Text("Signout"),
            onTap: () { Navigator.push(
                context,
                 MaterialPageRoute(
                   builder: (context) => Login(),
                 ),
                );},
          ),
        ],
      ),
    );
  }
}
