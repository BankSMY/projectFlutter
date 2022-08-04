import 'dart:html';
import 'package:flutter/material.dart';
import 'package:thunderbird/Login.dart';

class Signup extends StatelessWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text("Sign Up"),
      ),
      body: Center(child: Column(
        children: [
          Text(
              "Username",
              style: TextStyle(fontSize: 25),
            ),
          Container(
              width: MediaQuery.of(context).size.width * 0.8,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
              decoration: BoxDecoration(
                color: Colors.lightBlue,
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
                color: Colors.lightBlue,
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
             Text(
              "Email",
              style: TextStyle(fontSize: 25),
            ),
          Container(
              width: MediaQuery.of(context).size.width * 0.8,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
              decoration: BoxDecoration(
                color: Colors.lightBlue,
                borderRadius: BorderRadius.circular(30),
              ),
              child: TextField(
                decoration: InputDecoration(
                    icon: Icon(
                      Icons.email,
                      color: Colors.black,
                    ),
                    hintText: 'Enter Email',
                    border: InputBorder.none),
                style: TextStyle(color: Colors.white),
              ),
            ),
           Container(child: Row(
             children: [
               Text("Already a member,"),
                TextButton(
              style: ButtonStyle(),
              onPressed: () {
              Navigator.pop(
                context,
                 MaterialPageRoute(
                   builder: (context) => Login(),
                 ),
                );
            }, 
            
            child: Text("Login")),
             ],
             mainAxisAlignment: MainAxisAlignment.center,
           ),)
          ],

        ),
      ),
     
    );
  }
  
    
}
    
