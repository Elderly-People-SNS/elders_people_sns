import 'package:flutter/material.dart';
import 'kakaoAlert6.dart';
import 'package:elderly_people_sns/kakaotalkList.dart';

class seven extends six {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: GestureDetector(
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => KakaotalkList()),
          );
        },
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/kakaotalk/alert_07.png'),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}