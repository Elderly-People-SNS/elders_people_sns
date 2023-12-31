import 'package:flutter/material.dart';
import 'package:elderly_people_sns/kakaoFacetalk/facetalk3.dart';

class Facetalk2_2 extends StatefulWidget {
  @override
  Facetalk2_2State createState() => Facetalk2_2State();

  const Facetalk2_2({Key? key}) : super(key: key);
}

class Facetalk2_2State extends State<Facetalk2_2> {

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
              child: Image.asset(
                'assets/images/facetalkImages/kkoChatting.png',
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.fill,
              ),
            ),
            Positioned(
              top: 190,
              left: 0,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Facetalk3()),
                  );
                },
                child: Container(
                  width: 70,
                  height: 100,
                  color: Colors.transparent,
                ),
              ),
            ),
            Positioned(
              top: 280,
              left: 0,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Facetalk3()),
                  );
                },
                child: Container(
                  width: 70,
                  height: 100,
                  color: Colors.transparent,
                ),
              ),
            ),
            Positioned(
              top: 500,
              left: 0,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Facetalk3()),
                  );
                },
                child: Container(
                  width: 70,
                  height: 130,
                  color: Colors.transparent,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}