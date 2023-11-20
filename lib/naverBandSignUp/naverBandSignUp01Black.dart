import 'package:flutter/material.dart';
import 'package:elderly_people_sns/naverBandSignUp/naverBandSignUp02.dart';

class NaverBandSignUp01Black extends StatefulWidget {
  @override
  NaverBandSignUp01BlackState createState() => NaverBandSignUp01BlackState();

  const NaverBandSignUp01Black({Key? key}) : super(key: key);
}

class NaverBandSignUp01BlackState extends State<NaverBandSignUp01Black> {
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
              title: const Text("네이버 밴드",
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
                        'assets/images/bandSignUp/naver_band_sign_up_1_black.png',
                        width: double.infinity,
                        height: double.infinity,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 710,
                    left: 150,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const NaverBandSignUp02()));
                      },
                      child: Container(
                        height: 50,
                        width: 50,
                        color: Colors.transparent,
                      ),
                    ),
                  ),
                ],
              ),
            )));
  }
}
