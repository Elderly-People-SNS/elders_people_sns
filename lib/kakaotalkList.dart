import 'package:flutter/material.dart';

class KakaotalkList extends StatefulWidget {
  @override
  KakaotalkListState createState() => KakaotalkListState();

  const KakaotalkList({Key? key}) : super(key: key);
}

class KakaotalkListState extends State<KakaotalkList> {

  List<String> kakaoTalkLearningList = [
    '채팅방 만들기',
    '알림설정',
    '영상통화(페이스톡)'];

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
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              for (int i = 0; i < 3; i += 1)
                InkWell(
                  onTap: (){},
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
                        kakaoTalkLearningList[i],
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
      ),
    );
  }
}