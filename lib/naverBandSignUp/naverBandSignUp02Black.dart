import 'package:flutter/material.dart';
import 'package:elderly_people_sns/naverBandSignUp/naverBandSignUp03.dart';

class NaverBandSignUp02Black extends StatefulWidget {
  @override
  NaverBandSignUp02BlackState createState() => NaverBandSignUp02BlackState();

  const NaverBandSignUp02Black({Key? key}) : super(key: key);
}

class NaverBandSignUp02BlackState extends State<NaverBandSignUp02Black> {
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
          body: Center(child:
            Stack(
            children: <Widget>[
              Container(
                child: InkWell(
                  onTap: () {},
                  child: Ink(
                    width: 500,
                    height: 658,
                    child: Align(
                      alignment: Alignment.center,
                      child:
                          Image.asset('assets/images/naver_band_sign_up_2.png'),
                    ),
                  ),
                ),
              ),
              Container(
                child: InkWell(
                  onTap: () {},
                  child: Ink(
                    width: 500,
                    height: 1000,
                    child: Opacity(
                      opacity: 0.75,
                      child: Image.asset('assets/images/naver_band_sign_up_black.png'),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 300,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const NaverBandSignUp03()));
                  },
                  child: Ink(
                    width: 500,
                    height: 200,
                    child: Opacity(
                      opacity: 0.25,
                      child: Image.asset('assets/images/naver_band_sign_up_black.png'),
                    ),
                  ),
                ),
              ),
            ],
          ),)
        )
    );
  }
}
