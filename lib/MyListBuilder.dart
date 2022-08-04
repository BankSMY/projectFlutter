import 'package:flutter/material.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

class MyListBuilder extends StatefulWidget {
  MyListBuilder({Key? key}) : super(key: key);

  @override
  State<MyListBuilder> createState() => _BuilderState();
}

class _BuilderState extends State<MyListBuilder> {
  List pets = [];
  bool isLoading = true;
  void fetchPets() async {
    var url = Uri.https("60f9bc967ae59c0017165f11.mockapi.io", "/pets");
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var items = convert.jsonDecode(response.body);
      setState(() {
        pets = items;
        isLoading = false;
      });
    } else {
      print("Can not Fetch");
    }
  }

  @override
  Widget build(BuildContext context) {
    // final List<List<String>> pets = <List<String>>[
    //   ['Dog','Lily'],
    //   ['Cat','Garfirld'],
    //    ['Fish','Gold'],
    //     ['Dragon','Ball']
    //     ];

    fetchPets();
    if (isLoading) {
      return Material(
        child: Center(
            child: CircularProgressIndicator(
          color: Colors.blue,
        )),
      );
    }
    return Material(
      child: ListView.builder(
        itemCount: pets.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: EdgeInsets.only(bottom: 2),
            padding: EdgeInsets.only(bottom: 2),
            color: Color.fromARGB(255, 141, 193, 244),
            child: Row(children: <Widget>[
              Expanded(
                flex: 2,
                child: CircleAvatar(
                  backgroundColor: Colors.blue,
                  backgroundImage: NetworkImage(pets[index]['avatar']),
                ),
              ),
              Expanded(
                  flex: 6,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        pets[index]['name'],
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 30),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        pets[index]['type'],
                      ),
                    ],
                  )),
              Expanded(
                flex: 2,
                child: IconButton(
                  onPressed: (() => null),
                  icon: Icon(Icons.phone),
                ),
              ),
            ]),
          );
        },
      ),
    );
  }
}
