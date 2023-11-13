import 'package:flutter/material.dart';
import 'add_friend_02.dart';
import 'add_friend_04.dart';

class ThirdScreen extends SecondScreen {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: GestureDetector(
        onTap: () {
          _navigateToNextScreen(context);
        },
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/kakaotalk/add_friend_03.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: EventBox(),
          ),
        ),
      ),
    );
  }

  void _navigateToNextScreen(BuildContext context) {
    RenderBox renderBox = context.findRenderObject() as RenderBox;
    Offset tapPosition = renderBox.globalToLocal(renderBox.semanticBounds.topLeft);

    // EventBox 영역을 경계로 정의
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
        MaterialPageRoute(builder: (context) => FourthScreen()),
      );
    }
  }
}

class EventBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => FourthScreen()),
        );
      },
      child: Stack(
        children: [
          Positioned(
            left: 25,
            top: 770,
            child: Container(
              width: 146,
              height: 146,
              color: Colors.blue.withOpacity(0.5),
            ),
          ),
        ],
      ),
    );
  }
}
