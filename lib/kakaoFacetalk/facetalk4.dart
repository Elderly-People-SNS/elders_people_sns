import 'package:flutter/material.dart';
import 'package:elderly_people_sns/kakaoFacetalk/facetalk5.dart';

class Facetalk4 extends StatefulWidget {
  @override
  Facetalk4State createState() => Facetalk4State();

  const Facetalk4({Key? key}) : super(key: key);
}

class Facetalk4State extends State<Facetalk4> {

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
                'assets/images/facetalkImages/kkoCheck.png',
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.fill,
              ),
            ),
            Positioned(
              top: 320,
              right: 45,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Facetalk5()),
                  );
                },
                child: Container(
                  width: 100,
                  height: 80,
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