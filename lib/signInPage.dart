import 'dart:async';

import 'package:elderly_people_sns/main.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'getX.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {

  final getXController = Get.put(Getx()); // getX 선언

  var userId = "";
  var userPw = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            const SizedBox(height: 50),
            Container(
              padding: const EdgeInsets.all(40.0),
              // 키보드가 올라와서 만약 스크린 영역을 차지하는 경우 스크롤이 되도록
              // SingleChildScrollView으로 감싸 줌
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    TextField(
                      decoration: const InputDecoration(labelText: '아이디를 입력해주세요'),
                      keyboardType: TextInputType.text,
                      onChanged: (text) {
                        setState(() {
                          userId = text;
                        });
                      },
                    ),
                    TextField(
                      decoration: const InputDecoration(labelText: '비밀번호를 입력해주세요'),
                      keyboardType: TextInputType.text,
                      obscureText: true, // 비밀번호 안보이도록 하는 것
                      onChanged: (text) {
                        setState(() {
                          userPw = text;
                        });
                      },
                    ),
                    const SizedBox(
                      height: 40.0,
                    ),
                    ButtonTheme(
                        minWidth: 100.0,
                        height: 50.0,
                        child: ElevatedButton(
                          onPressed: () async {

                            bool isLoggedIn = await loginUser(userId, userPw);

                            if(isLoggedIn){
                              Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const MainScreen()),(route) => false);
                            } else {
                              Fluttertoast.showToast(
                                  msg: "아이디와 비밀번호가 일치하지 않습니다.",
                                  gravity: ToastGravity.BOTTOM,
                                  backgroundColor: const Color(0xff6E6E6E),
                                  fontSize: 20,
                                  toastLength: Toast.LENGTH_SHORT);
                            }
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                              minimumSize: const Size(219, 48),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
                          ),
                          child: const Text("로그인",
                            style: TextStyle(fontSize: 18,
                                color: Colors.white
                            ),
                          ),
                        ))
                  ],
                ),
              ),
            )
          ],
        ));
  }

  // 아이디와 패스워드가 일치하는지 확인하는 함수
  Future<bool> loginUser(String id, String pw) async {

    print(id);
    print(pw);
    FirebaseDatabase realtime = FirebaseDatabase.instance;
    DataSnapshot snapshot = await realtime.ref().child("members").get();
    Map<dynamic, dynamic> value = snapshot.value as Map<dynamic, dynamic>;
    final getXController = Get.put(Getx()); // getX 선언
    bool temp = false;

    if (snapshot.exists) {
      // value 맵을 순회하며 원하는 사용자의 ID를 찾기
      value.forEach((key, userData) {

        if (userData["id"] == id && userData["pw"] == pw) {
          print(userData["id"]);
          print(userData["pw"]);

          getXController.userId = userData["id"];

          temp = true; // 원하는 ID를 찾으면 더 이상 순회하지 않음
        }
      });
    } else{
      print(snapshot.value);
      print('No data available.');
    }
    return temp;
  }
}
