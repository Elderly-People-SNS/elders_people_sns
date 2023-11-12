import 'package:flutter/material.dart';
import 'add_friend_06.dart';
import 'add_friend_08.dart';

class SeventhScreen extends SixthScreen {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          // 화면을 터치하면 다음 화면으로 이동
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => EighthScreen()),
          );
        },
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/kakaotalk/add_friend_07.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}