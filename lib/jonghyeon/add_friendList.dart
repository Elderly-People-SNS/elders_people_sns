import 'package:elderly_people_sns/kakaotalkList.dart';
import 'package:flutter/material.dart';
import 'package:elderly_people_sns/jonghyeon/add_friend_01.dart';
import 'package:elderly_people_sns/jonghyeon/add_friend_05.dart';

class Add_friendList extends StatefulWidget {
  @override
  Add_friendListState createState() => Add_friendListState();

  const Add_friendList({Key? key}) : super(key: key);
}

class Add_friendListState extends State<Add_friendList> {

  List<String> kakaoTalkLearningList = [
    '친구에서 찾기',
    '채팅 새로 만들기'];

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
                "카카오톡",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.normal,
                )),
            backgroundColor: const Color(0xFFF7E600),
          ),
          body: Stack(
              children: [
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => FirstScreen()));
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
                                // blurRadius: 1.0,
                              ),
                            ],
                          ),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              kakaoTalkLearningList[0],
                              maxLines: 3,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => FifthScreen()));
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
                                // blurRadius: 1.0,
                              ),
                            ],
                          ),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              kakaoTalkLearningList[1],
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
                        MaterialPageRoute(builder: (context) => KakaotalkList()),
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
        )
    );
  }
}