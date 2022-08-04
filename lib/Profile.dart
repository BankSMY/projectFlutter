import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Profile"),
        ),
        body: Stack(
            
          children: [
            
            Container(
              padding: const EdgeInsets.only(left: 570.0, top: 20),
              child: Text(
                "Now Showing",
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              child: Row(children: [
                Container(
                  padding: const EdgeInsets.only(left: 400, top: 100),
                  margin: EdgeInsets.only(
                    right: 30.0,
                  ),
                  child: Image.asset(
                    'images/antman.jpg',
                    width: 200,
                    height: 300,
                    fit: BoxFit.fill,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 100),
                  margin: EdgeInsets.only(
                    right: 30.0,
                  ),
                  child: Image.asset('images/captainMarvel.jpg',
                      width: 200, height: 300, fit: BoxFit.fill),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 100),
                  margin: EdgeInsets.only(
                    right: 30.0,
                  ),
                  child: Image.asset('images/spiderman.jpg',
                      width: 200, height: 300, fit: BoxFit.fill),
                ),
              ]),
            ),
            Container(
              padding: const EdgeInsets.only(left: 400.0, top: 420),
              child: Text(
                "Show Movie",
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 470.0, top: 500),
              child: Row(children: [
                Container(
                 
                  margin: EdgeInsets.only(
                    right: 30.0,
                  ),
                  child: Image.asset('images/captain.jpg',
                      width: 150, height: 200, fit: BoxFit.fill),
                ),
                Container(
                  margin: EdgeInsets.only(
                    right: 30.0,
                  ),
                  child: Image.asset('images/doctor.jpeg',
                      width: 150, height: 200, fit: BoxFit.fill),
                ),
                Container(
                  margin: EdgeInsets.only(
                    right: 30.0,
                  ),
                  child: Image.asset('images/endgame.jpeg',
                      width: 150, height: 200, fit: BoxFit.fill),
                ),
              ]),
            )
          ],
        ));
  }
}
