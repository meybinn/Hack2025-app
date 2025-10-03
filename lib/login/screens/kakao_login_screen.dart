import 'package:flutter/material.dart';
import 'package:hack2025_mobile_app/commons/constant/gaps.dart';
import 'package:hack2025_mobile_app/commons/themes.dart';
import 'package:hack2025_mobile_app/login/screens/login_screen.dart';
import 'package:hack2025_mobile_app/login/screens/naver_login_screen.dart';
import 'package:hack2025_mobile_app/widgets/login_container.dart';

class KakaoLoginScreen extends StatefulWidget {
  const KakaoLoginScreen({super.key});

  @override
  State<KakaoLoginScreen> createState() => _KakaoLoginScreenState();
}

class _KakaoLoginScreenState extends State<KakaoLoginScreen> {
  final TextEditingController _idController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  String id = "";
  String password = "";

  @override
  void initState() {
    super.initState();

    _idController.addListener(() {
      setState(() {
        id = _idController.text;
      });
    });

    _passwordController.addListener(() {
      setState(() {
        password = _passwordController.text;
      });
    });
  }

  @override
  void dispose() {
    _idController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _onNextTap() {
    if (id.isEmpty || password.isEmpty) return;
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const NaverLoginScreen(), // 이후 home screen으로 바꾸기
      ),
    );
    // print("작동 완료!!!!!!!!! $id , $password");
  }

  void _onScaffoldTap() {
    FocusScope.of(context).unfocus();
  }

  void _onBackTap() {
    Navigator.pop(context);
    // print("작동 완료!!!!!!!!! $id , $password");
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onScaffoldTap,
      child: Scaffold(
        backgroundColor: Themes.kakao_background,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Gaps.v40,
            Container(
              alignment: Alignment.topCenter,
              child:
                  Image.asset('assets/images/kakao_logo.png', fit: BoxFit.fill),
            ),
            LoginContainer(
                way: "kakao", hintText: '아이디', controller: _idController),
            Gaps.v24,
            LoginContainer(
                way: "kakao",
                hintText: '비밀번호',
                controller: _passwordController),
            Gaps.v32,
            GestureDetector(
              onTap: _onNextTap,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.85,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  color: Themes.kakao_text,
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 13, horizontal: 20),
                  child: Text(
                    '로그인',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Themes.naver_text,
                      fontSize: MediaQuery.of(context).size.height * 0.035,
                    ),
                  ),
                ),
              ),
            ),
            Gaps.v16,
            GestureDetector(
              onTap: _onBackTap,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.85,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  color: Themes.kakao_text,
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 13, horizontal: 20),
                  child: Text(
                    '돌아가기',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Themes.naver_text,
                      fontSize: MediaQuery.of(context).size.height * 0.035,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
