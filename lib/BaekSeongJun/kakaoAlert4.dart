import 'package:flutter/material.dart';
import 'kakaoAlert3.dart';
import 'kakaoAlert5.dart';

class four extends three {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: GestureDetector(
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => five()),
          );
        },
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/kakaotalk/alert_04.png'),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}