import 'package:flutter/material.dart';
import 'package:elderly_people_sns/kakaoFacetalk/facetalkList.dart';

class Facetalk5 extends StatefulWidget {
  @override
  Facetalk5State createState() => Facetalk5State();

  const Facetalk5({Key? key}) : super(key: key);
}

class Facetalk5State extends State<Facetalk5> {

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
        body: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FacetalkList()),
            );
          },
          child: Center(
            child: Image.asset(
              'assets/images/facetalkImages/kkoFacetalk.png',
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