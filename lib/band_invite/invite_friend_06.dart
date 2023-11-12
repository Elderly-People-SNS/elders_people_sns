import 'package:flutter/material.dart';
import 'invite_friend_07.dart'; // SeventhScreen이 'invite_friend_07.dart'에서 import된 것으로 가정합니다.

class SixthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SeventhScreen()),
          );
        },
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/Band/8.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: EventBox(),
          ),
        ),
      ),
    );
  }
}

class EventBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: screenWidth,
      height: MediaQuery.of(context).size.height,
      child: Center(
        child: Container(
          width: 200,
          height: 100,
          color: Colors.blue.withOpacity(0),
        ),
      ),
    );
  }
}
