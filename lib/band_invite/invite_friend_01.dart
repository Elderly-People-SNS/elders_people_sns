import 'package:flutter/material.dart';
import 'invite_friend_02.dart';

class Invite_01 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SecondScreen()),
          );
        },
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/Band/3.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}