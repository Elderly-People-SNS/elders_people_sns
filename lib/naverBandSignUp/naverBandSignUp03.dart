import 'package:flutter/material.dart';
import 'package:elderly_people_sns/naverBandSignUp/naverBandSignUp03Black.dart';

class NaverBandSignUp03 extends StatefulWidget {
  @override
  NaverBandSignUp03State createState() => NaverBandSignUp03State();

  const NaverBandSignUp03({Key? key}) : super(key: key);
}

class NaverBandSignUp03State extends State<NaverBandSignUp03> {
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
                    builder: (context) => const NaverBandSignUp03Black()));
          },
          child: Center(
            child: Image.asset(
              'assets/images/bandSignUp/naver_band_sign_up_3.png',
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