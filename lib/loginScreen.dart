import 'package:elderly_people_sns/signInPage.dart';
import 'package:elderly_people_sns/signUpPage.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'getX.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LoginScreen(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.black,
          primary: Colors.grey,
          secondary: Colors.white,
        ),
        useMaterial3: true,
      ),
    );
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final getXController = Get.put(Getx()); // getX 선언

  bool isButtonPressed = false;
  final TextEditingController _textEditingController = TextEditingController();
  bool isTextEntered = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child:         Column(
            children: [
              const SizedBox(height: 70),
              SizedBox(
                  child: Image.asset(
                    'assets/images/main_icon.png',
                    width: 150,
                    height: 300,
                    fit: BoxFit.contain,
                  )
              ),
              const SizedBox(height: 90),
              ElevatedButton(
                  onPressed: () {
                    if(getXController.userId == ""){
                      showToast();
                    } else{
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const SignInPage()));
                    }
                  },
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(219, 48),
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))
                  ),
                  child: const Text(
                      "로그인 하기",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                      )
                  )
              ),
              const SizedBox(height: 30),
              isButtonPressed // true이면, TextField가 나온다.
                  ? TextField(
                controller: _textEditingController,
                onChanged: (text) {
                  setState(() {
                    isTextEntered = text.isNotEmpty;
                  });
                },
                decoration: const InputDecoration(
                  hintText: "텍스트를 입력하세요",
                  hintStyle: TextStyle(color: Colors.grey),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                ),
              )
                  : ElevatedButton( // isButtonPressed가 false일때는 버튼
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignUpPage()));
                  },
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(219, 48),
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))
                  ),
                  child: const Text(
                      "회원가입 하기",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                      )
                  )
              ), // 숨겨진 상태에서는 회원가입 버튼을 표시
            ],
          )
        ),
      ),
    );
  }

  void showToast() {
    Fluttertoast.showToast(
      msg: "회원가입을 해주세요.",
      gravity: ToastGravity.CENTER, // 토스트메시지 위치설정
      backgroundColor: Colors.white,
      fontSize: 20,
      textColor: Colors.black,
      toastLength: Toast.LENGTH_SHORT // 토스트가 뜨는 시간
    );
  }
}
