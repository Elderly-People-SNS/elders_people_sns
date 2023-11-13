import 'package:flutter/material.dart';
import 'package:elderly_people_sns/kakaoFacetalk/facetalk3.dart';

class Facetalk2_1 extends StatefulWidget {
  @override
  Facetalk2_1State createState() => Facetalk2_1State();

  const Facetalk2_1({Key? key}) : super(key: key);
}

class Facetalk2_1State extends State<Facetalk2_1> {

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
                'assets/images/facetalkImages/kkoFriendList.png',
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.fill,
              ),
            ),
            Positioned(
              top: 400,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Facetalk3()),
                  );
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 100,
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