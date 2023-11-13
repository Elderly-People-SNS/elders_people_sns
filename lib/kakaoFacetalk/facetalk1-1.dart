import 'package:flutter/material.dart';
import '../kakaoFacetalk/facetalk2-1.dart';

class Facetalk1_1 extends StatefulWidget {
  @override
  Facetalk1_1State createState() => Facetalk1_1State();

  const Facetalk1_1({Key? key}) : super(key: key);
}

class Facetalk1_1State extends State<Facetalk1_1> {

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
              MaterialPageRoute(builder: (context) => Facetalk2_1()),
            );
          },
          onVerticalDragUpdate: (DragUpdateDetails details) {
            double primaryDelta = details.primaryDelta ?? 0;
            if (primaryDelta < 0) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Facetalk2_1()),
              );
            }
          },
          child: Center(
            child: Image.asset(
              'assets/images/facetalkImages/kkoMain.png',
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