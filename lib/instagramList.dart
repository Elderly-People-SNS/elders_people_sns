import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:elderly_people_sns/main.dart';

class InstagramList extends StatelessWidget {
   InstagramList({super.key});
  List<String> instagramLearningList = [
    '스토리 올리기',
    '게시물 올리기',
    '팔로우 하기'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.black,
          primary: Colors.grey,
          secondary: Colors.white,
        ),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
              "인스타그램",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.normal,
              )),
          backgroundColor: Colors.pinkAccent,
        ),
        body: Stack(
            children: [
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    for (int i = 0; i < 3; i += 1)
                      InkWell(
                        onTap: (){
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => const NaverBandSignUp01()));
                        },
                        customBorder: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Ink(
                          width: 370,
                          height: 88,
                          decoration: BoxDecoration(
                            color: const Color(0xffffffff),
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.grey,
                                offset: Offset(0.0, 4.0), //(x,y)
                                blurRadius: 1.0,
                              ),
                            ],
                          ),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              instagramLearningList[i],
                              maxLines: 3,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      )
                  ],
                ),
              ),
              Positioned(
                bottom: 10.0,
                left: 10.0,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MainScreen()),
                    );
                  },
                  child: Image.asset(
                    'assets/images/backButton.png',
                    width: 70,
                    height: 70,
                  ),
                ),
              ),
            ]
        ),
      ),
    );
  }
}
