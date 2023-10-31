import 'package:flutter/material.dart';

class NaverBandList extends StatefulWidget {
  @override
  NaverBandListState createState() => NaverBandListState();

  const NaverBandList({Key? key}) : super(key: key);
}

class NaverBandListState extends State<NaverBandList> {

  List<String> naverBandLearningList = [
    '밴드 가입하기',
    '인원 초대하기',
    '밴드 탈퇴하기'];

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
              "네이버 밴드",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.normal,
              )),
          backgroundColor: const Color(0xFF1EC800),
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
                        naverBandLearningList[i],
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