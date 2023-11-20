import 'package:flutter/material.dart';
import 'package:elderly_people_sns/naverBandSignUp/naverBandSignUp05.dart';

class NaverBandSignUp04 extends StatefulWidget {
  @override
  NaverBandSignUp04State createState() => NaverBandSignUp04State();

  const NaverBandSignUp04({Key? key}) : super(key: key);
}

class NaverBandSignUp04State extends State<NaverBandSignUp04> {
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
            child: Stack(
              children: <Widget>[
                Container(
                  child: Center(
                    child: Image.asset(
                      'assets/images/bandSignUp/naver_band_sign_up_4.png',
                      width: double.infinity,
                      height: double.infinity,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Positioned(
                  top: 550,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                              const NaverBandSignUp05()));
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 60,
                      color: Colors.transparent,
                    ),
                  ),
                ),
              ],
            ),
          )));
  }
}