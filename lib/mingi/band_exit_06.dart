import 'package:elderly_people_sns/jonghyeon/add_friend_07.dart';
import 'package:flutter/material.dart';
import 'band_exit_07.dart';
import 'band_exit_05.dart';

class Screen6 extends Screen5 {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          // 화면을 터치하면 다음 화면으로 이동
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Screen7()),
          );
        },
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/band/band_exit_06.png'),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}

