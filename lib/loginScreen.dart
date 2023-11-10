import 'package:elderly_people_sns/main.dart';
import 'package:flutter/material.dart';

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
  bool isButtonPressed = false;
  final TextEditingController _textEditingController = TextEditingController();
  bool isTextEntered = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
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
                // setState(() {
                //   isButtonPressed = !isButtonPressed;
                // });

                Navigator.push(context,
                MaterialPageRoute(builder: (context) => const MainScreen()));
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(219, 48),
                foregroundColor: Colors.white,
                backgroundColor: Colors.black
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
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(219, 48),
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.black
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
        ),
      ),
    );
  }
}
