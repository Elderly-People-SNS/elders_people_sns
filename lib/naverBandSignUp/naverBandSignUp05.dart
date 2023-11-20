import 'package:flutter/material.dart';
import 'package:elderly_people_sns/naverBandList.dart';

class NaverBandSignUp05 extends StatefulWidget {
  @override
  NaverBandSignUp05State createState() => NaverBandSignUp05State();

  const NaverBandSignUp05({Key? key}) : super(key: key);
}

class NaverBandSignUp05State extends State<NaverBandSignUp05> {
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
        body: GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const NaverBandList()));
          },
          child: Center(
            child: Image.asset(
              'assets/images/bandSignUp/naver_band_sign_up_5.png',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}