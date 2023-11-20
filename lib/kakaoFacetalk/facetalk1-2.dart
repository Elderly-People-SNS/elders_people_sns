import 'package:flutter/material.dart';
import 'package:elderly_people_sns/kakaoFacetalk/facetalk2-2.dart';

class Facetalk1_2 extends StatefulWidget {
  @override
  Facetalk1_2State createState() => Facetalk1_2State();

  const Facetalk1_2({Key? key}) : super(key: key);
}

class Facetalk1_2State extends State<Facetalk1_2> {

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
                'assets/images/facetalkImages/kkoChatList.png',
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.fill,
              ),
            ),
            Positioned(
              top: 240,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Facetalk2_2()),
                  );
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
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