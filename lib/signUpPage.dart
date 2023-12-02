import 'package:elderly_people_sns/loginScreen.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'getX.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {

  final getXController = Get.put(Getx()); // 선언
  FirebaseDatabase realtime = FirebaseDatabase.instance;

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
                    getXController.userId = text;
                    print(getXController.userId);
                  },
                ),
                 TextField(
                  decoration: const InputDecoration(labelText: '비밀번호를 입력해주세요'),
                  keyboardType: TextInputType.text,
                  obscureText: true, // 비밀번호 안보이도록 하는 것
                  onChanged: (text) {
                    getXController.userPw = text;
                    print(getXController.userPw);
                  },
                ),
                const SizedBox(
                  height: 40.0,
                ),
                ButtonTheme(
                    minWidth: 100.0,
                    height: 50.0,
                    child: ElevatedButton(
                      onPressed: () {
                        realtime.ref().child("members").push().set({
                          "id": getXController.userId,
                          "pw": getXController.userPw,
                        });

                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginScreen()),(route) => false);
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          minimumSize: const Size(219, 48),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
                      ),
                      child: const Text("회원가입 완료",
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
}
