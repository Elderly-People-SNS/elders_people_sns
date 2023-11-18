import 'package:elderly_people_sns/instagramList.dart';
import 'package:elderly_people_sns/naverBandList.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'getX.dart';
import 'kakaotalkList.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => MainScreenState();

}

class MainScreenState extends State<MainScreen> {
  DateTime? currentBackPressTime;

  final getXController = Get.put(Getx()); // getX 선언

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xf5f5f5f5),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        // 뒤로가기 자동생성 막기
        toolbarHeight: 64,
        backgroundColor: const Color(0xffffffff),
        title: Text("이름 : ${getXController.userId}"),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.account_circle))
        ],
      ),
      body: WillPopScope(
          onWillPop: onWillPop,
          child: Center(
            child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const KakaotalkList()));
                          },
                          customBorder: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Ink(
                            width: 180,
                            height: 200,
                            decoration: BoxDecoration(
                              color: const Color(0xffffffff),
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(0.0, 4.0), //(x,y)
                                  blurRadius: 1.0,
                                ),
                              ],
                            ),
                            child: Center(
                              child: Column(
                                children: [
                                  const SizedBox(height: 20),
                                  SizedBox(
                                    child:
                                    Image.asset('assets/images/kakaotalk_icon.png'),
                                  ),
                                  const SizedBox(height: 5),
                                  const Text(
                                    "카카오톡",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const NaverBandList()));
                          },
                          customBorder: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Ink(
                            width: 180,
                            height: 200,
                            decoration: BoxDecoration(
                              color: const Color(0xffffffff),
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(0.0, 4.0), //(x,y)
                                  blurRadius: 1.0,
                                ),
                              ],
                            ),
                            child: Center(
                              child: Column(
                                children: [
                                  const SizedBox(height: 20),
                                  SizedBox(
                                    child:
                                    Image.asset(
                                        'assets/images/naver_band_icon.png'),
                                  ),
                                  const SizedBox(height: 5),
                                  const Text(
                                    "네이버 밴드",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: () {
                            //TODO 경로이동 시키기
                            Navigator.push(context, MaterialPageRoute(builder: (context) => InstagramList()));
                          },
                          customBorder: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Ink(
                            width: 180,
                            height: 200,
                            decoration: BoxDecoration(
                              color: const Color(0xffffffff),
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(0.0, 4.0), //(x,y)
                                  blurRadius: 1.0,
                                ),
                              ],
                            ),
                            child: Center(
                              child: Column(
                                children: [
                                  const SizedBox(height: 20),
                                  SizedBox(
                                    child:
                                    Image.asset('assets/images/instagram_icon.png'),
                                  ),
                                  const SizedBox(height: 5),
                                  const Text(
                                    "인스타그램",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            //TODO 경로이동 시키기

                          },
                          customBorder: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Ink(
                            width: 180,
                            height: 200,
                            decoration: BoxDecoration(
                              color: const Color(0xffffffff),
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(0.0, 4.0), //(x,y)
                                  blurRadius: 1.0,
                                ),
                              ],
                            ),
                            child: Center(
                              child: Column(
                                children: [
                                  const SizedBox(height: 20),
                                  SizedBox(
                                    child:
                                    Image.asset('assets/images/baemin_icon.png'),
                                  ),
                                  const SizedBox(height: 5),
                                  const Text(
                                    "배달의 민족",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                )
            ),
          )),
    );
  }

  Future<bool> onWillPop() async {
    DateTime currentTime = DateTime.now();

    //Statement 1 Or statement2
    if (currentBackPressTime == null ||
        currentTime.difference(currentBackPressTime!) >
            const Duration(seconds: 2)) {
      currentBackPressTime = currentTime;
      Fluttertoast.showToast(
          msg: "'뒤로' 버튼을 한번 더 누르시면 종료됩니다.",
          gravity: ToastGravity.BOTTOM,
          backgroundColor: const Color(0xff6E6E6E),
          fontSize: 20,
          toastLength: Toast.LENGTH_SHORT);
      return Future.value(false);
    }

    return Future.value(true);
  }
}
