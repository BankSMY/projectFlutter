import 'dart:html';

import 'package:flutter/material.dart';
import 'package:thunderbird/Signup.dart';
import 'package:thunderbird/Welcome.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Scaffold ຈະຄຸມ ບໍດີໄດ້ດີ ແລະ ຫຼາຍ
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Image.asset('images/logoerror.png',
                width: 250, height: 250, fit: BoxFit.fill),
            Text(
              "ERROR 404 ",
              style: TextStyle(
                  fontSize: 50,
                  color: Colors.green.shade900,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "Username",
              style: TextStyle(
               
                fontSize: 25,
               
                
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(30),
              ),
              child: TextField(
                decoration: InputDecoration(
                    icon: Icon(
                      Icons.person,
                      color: Colors.black,
                    ),
                    hintText: 'Enter Username',
                    border: InputBorder.none),
                style: TextStyle(color: Colors.white),
              ),
            ),
            // lerm ton password
            Text(
              "Password",
              style: TextStyle(fontSize: 25),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(30),
              ),
              child: TextField(
                obscureText: true, // jum jum
                decoration: InputDecoration(
                    icon: Icon(
                      
                      Icons.lock_rounded,
                      color: Colors.black,
                    ),
                    hintText: 'Enter Password',
                    border: InputBorder.none),
                style: TextStyle(color: Color.fromARGB(255, 2, 2, 2)),
              ),
            ),
            // TextButton(
            //   child: Text('Login'),
            //   style: TextButton.styleFrom(
            //     primary: Colors.green.shade700,
            //     backgroundColor: Colors.green.shade700,
            //     onSurface: Colors.grey,
            //   ),
            //   onPressed: () {
            //     print('Pressed');
            //   },
            // ),
            // poum kod Login
            ElevatedButton(
              style: ButtonStyle(),
            onPressed: () {
              Navigator.push(
                context,
                 MaterialPageRoute(
                   builder: (context) => Welcome(),
                 ),
                );
            }, 
              
            child: Text("Login")),
            // sign up
            TextButton(
              style: ButtonStyle(),
            onPressed: () {
              Navigator.push(
                context,
                 MaterialPageRoute(
                   builder: (context) => Signup(),
                 ),
                );
            }, 
              
            child: Text("Sign Up")),
            
          ],
        ),
      ),
    );
  }
}