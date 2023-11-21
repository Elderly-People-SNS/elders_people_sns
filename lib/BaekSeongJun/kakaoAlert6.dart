import 'package:elderly_people_sns/BaekSeongJun/kakaoAlert7.dart';
import 'package:flutter/material.dart';
import 'kakaoAlert3.dart';
import 'kakaoAlert5.dart';

class six extends five {
  @override
  Widget build(BuildContext context){
    return Scaffold(

      body: GestureDetector(
        onTap: (){
          GoToNextScreen(context);
        },
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/kakaotalk/alert_06.png'),
              fit: BoxFit.fill,
            ),
          ),
          child: Center(
            child:Event(),
          ),
        ),
      ),
    );
  }
}
GoToNextScreen(BuildContext context){
  RenderBox renderBox = context.findRenderObject() as RenderBox;
  Offset tapPosition = renderBox.globalToLocal(renderBox.semanticBounds.topLeft);

  double eventBoxLeft = 50;
  double eventBoxTop = 50;
  double eventBoxWidth = 200;
  double eventBoxHeight = 100;

  // 터치한 영역이 EventBox 내에 있는지 확인
  if (tapPosition.dx >= eventBoxLeft &&
      tapPosition.dx <= eventBoxLeft + eventBoxWidth &&
      tapPosition.dy >= eventBoxTop &&
      tapPosition.dy <= eventBoxTop + eventBoxHeight) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => seven()),
    );
  }
}


class Event extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery
        .of(context)
        .size
        .width;

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => seven()),
        );
      },
      child: Stack(
        children: [
          Positioned(
            left: 45,
            top: 495,

            child: Container(
              width: 320, // 화면 전체 너비로 설정
              height: 55,
              color: Colors.blue.withOpacity(0),
            ),
          ),
        ],
      ),
    );
  }
}