import 'package:flutter/material.dart';

class MyListView extends StatefulWidget {
  MyListView({Key? key}) : super(key: key);

  @override
  State<MyListView> createState() => _MyListViewState();
}

class _MyListViewState extends State<MyListView> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: ListView(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(bottom: 10),
          padding: const EdgeInsets.all( 10),
          height: 50,
          color: Color.fromARGB(255, 34, 174, 244),
          child: Text("Hello world"),

        ),

         Container(
          margin: EdgeInsets.only(bottom: 10),
          padding: const EdgeInsets.all(10),
          height: 50,
          color: Color.fromARGB(255, 58, 160, 244),
          child: Text("Hello world"),

        ),

         Container(
          margin: EdgeInsets.only(bottom: 10),
          padding:EdgeInsets.all( 10),
          height: 50,
          color: Color.fromARGB(255, 67, 136, 248),
          child: Text("Hello world"),

        )
      ],
    ),);
  }
}