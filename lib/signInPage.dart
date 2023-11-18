import 'package:elderly_people_sns/main.dart';
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
                          onPressed: () {
                            if(getXController.userId == userId){
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
}
