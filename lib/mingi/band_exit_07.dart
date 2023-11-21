import 'package:elderly_people_sns/jonghyeon/add_friend_08.dart';
import 'package:flutter/material.dart';
import 'band_exit_08.dart';
import 'band_exit_06.dart';

class Screen7 extends Screen6 {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          // 화면을 터치하면 다음 화면으로 이동
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Screen8()),
          );
        },
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/band/band_exit_07.png'),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}
