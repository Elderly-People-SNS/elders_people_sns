import 'package:flutter/material.dart';
import 'instagram_story_02.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          _navigateToNextScreen(context);
        },
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image:
                  AssetImage('assets/images/instagram/instagram_story_01.png'),
              fit: BoxFit.fill,
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
    Offset tapPosition =
        renderBox.globalToLocal(renderBox.semanticBounds.topLeft);

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
        MaterialPageRoute(builder: (context) => SecondScreen()),
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
          MaterialPageRoute(builder: (context) => SecondScreen()),
        );
      },
      child: Stack(
        children: [
          Positioned(
            left: 3,
            top: 102,
            child: Container(
              width: 105,
              height: 122,
              color: Colors.blue.withOpacity(0.5),
            ),
          ),
        ],
      ),
    );
  }
}
