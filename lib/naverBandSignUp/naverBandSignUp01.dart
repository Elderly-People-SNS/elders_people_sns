import 'package:flutter/material.dart';
import 'package:elderly_people_sns/naverBandSignUp/naverBandSignUp01Black.dart';

class NaverBandSignUp01 extends StatefulWidget {
  @override
  NaverBandSignUp01State createState() => NaverBandSignUp01State();

  const NaverBandSignUp01({Key? key}) : super(key: key);
}

class NaverBandSignUp01State extends State<NaverBandSignUp01> {
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
        body: GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const NaverBandSignUp01Black()));
          },
          child: Center(
            child: Image.asset(
              'assets/images/bandSignUp/naver_band_sign_up_1_real.png',
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
