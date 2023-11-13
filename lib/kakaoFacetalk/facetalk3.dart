import 'package:flutter/material.dart';
import 'package:elderly_people_sns/kakaoFacetalk/facetalk4.dart';

class Facetalk3 extends StatefulWidget {
  @override
  Facetalk3State createState() => Facetalk3State();

  const Facetalk3({Key? key}) : super(key: key);
}

class Facetalk3State extends State<Facetalk3> {

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
                'assets/images/facetalkImages/kkoProfile.png',
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.fill,
              ),
            ),
            Positioned(
              bottom: 0,
              right: 20,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Facetalk4()),
                  );
                },
                child: Container(
                  width: 150,
                  height: 150,
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