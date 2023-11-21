import 'package:flutter/material.dart';
import 'add_friend_09.dart';
import 'package:elderly_people_sns/jonghyeon/add_friendList.dart';

class TenthScreen extends NinthScreen {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          // 화면을 터치하면 다음 화면으로 이동
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Add_friendList()),
          );
        },
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/kakaotalk/add_friend_10.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
