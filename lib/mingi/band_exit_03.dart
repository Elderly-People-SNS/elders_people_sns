import 'package:elderly_people_sns/jonghyeon/add_friend_04.dart';
import 'package:flutter/material.dart';
import 'band_exit_04.dart';
import 'band_exit_02.dart';

class Screen3 extends Screen2 {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          // 화면을 터치하면 다음 화면으로 이동
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Screen4()),
          );
        },
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/band/band_exit_03.png'),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}
