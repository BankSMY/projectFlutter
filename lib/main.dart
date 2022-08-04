import 'package:flutter/material.dart';
import 'package:thunderbird/Airline.dart';
import 'package:thunderbird/MyListview.dart';
import 'package:thunderbird/MylistBuilder.dart';
import 'package:thunderbird/Products.dart';
import 'package:thunderbird/Profile.dart';
import 'package:thunderbird/Test.dart';

import 'Test.dart';
import '_loading.dart';
import 'MyListview.dart';
import 'Login.dart';
void main(List<String> args) {
  runApp(ThunderBird());
}

class ThunderBird extends StatelessWidget {
  //const ThunderBird({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'ThunderBird',

    //home: Login(),
    home: MyListBuilder(),

    );

  }
}