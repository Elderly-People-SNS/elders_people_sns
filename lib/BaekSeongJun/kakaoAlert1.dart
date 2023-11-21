import 'package:flutter/material.dart';
import 'kakaoAlert2.dart';
import 'package:elderly_people_sns/kakaotalkList.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: GestureDetector(
        onTap: (){
          Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => two()),
          );
    },
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/kakaotalk/alert_01.png'),
            fit: BoxFit.fill,
          ),
        ),
      ),
      ),
    );
  }
}