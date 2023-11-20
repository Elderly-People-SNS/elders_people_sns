import 'package:flutter/material.dart';
import 'package:elderly_people_sns/naverBandSignUp/naverBandSignUp04.dart';

class NaverBandSignUp03Black extends StatefulWidget {
  @override
  NaverBandSignUp03BlackState createState() => NaverBandSignUp03BlackState();

  const NaverBandSignUp03Black({Key? key}) : super(key: key);
}

class NaverBandSignUp03BlackState extends State<NaverBandSignUp03Black> {
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
                        'assets/images/bandSignUp/naver_band_sign_up_3_black.png',
                        width: double.infinity,
                        height: double.infinity,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 710,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                const NaverBandSignUp04()));
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
