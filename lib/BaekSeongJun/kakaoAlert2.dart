import 'package:elderly_people_sns/BaekSeongJun/kakaoAlert3.dart';
import 'package:flutter/material.dart';
import 'kakaoAlert1.dart';
import 'kakaoAlert3.dart';

class two extends MyPage{
  @override
  Widget build(BuildContext context){
    return Scaffold(

      body: GestureDetector(
        onLongPress: (){
          GoToNextScreen(context);
      },
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/kakaotalk/alert_02.png'),
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

void GoToNextScreen(BuildContext context){
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
      MaterialPageRoute(builder: (context) => three()),
    );
  }
}


class Event extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return GestureDetector(
      onLongPress: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => three()),
        );
      },
      child: Stack(
        children: [
          Positioned(
            left: 0,
            top: 360,

            child: Container(
              width: screenWidth, // 화면 전체 너비로 설정
              height: 100,
              color: Colors.blue.withOpacity(0),
            ),
          ),
        ],
      ),
    );
  }
}