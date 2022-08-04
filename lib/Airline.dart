import 'dart:html';

import 'package:flutter/material.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

class Airline extends StatelessWidget {
  const Airline({Key? key}) : super(key: key);
  void loadAir () async{
    var url = Uri.https("api.instantwebtools.net", "/v1/airlines/2");
    var res = await http.get(url);

    print(res.statusCode);
    print(res.body);
  }
  @override
  Widget build(BuildContext context) {
    loadAir();
    return Container();
  }
}