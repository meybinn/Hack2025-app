import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hack2025_mobile_app/commons/constant/gaps.dart';
import 'package:hack2025_mobile_app/commons/constant/sizes.dart';
import 'package:hack2025_mobile_app/commons/themes.dart';
import 'package:hack2025_mobile_app/login/widgets/login_container.dart';
import 'package:hack2025_mobile_app/regist/userInterestScreen.dart';
import 'package:hack2025_mobile_app/regist/widget/select_gender.dart';

class Userinfoscreen extends StatefulWidget {
  const Userinfoscreen({super.key});

  @override
  State<Userinfoscreen> createState() => _UserinfoscreenState();
}

class _UserinfoscreenState extends State<Userinfoscreen> {
  final TextEditingController _idController = TextEditingController();

  String id = "";

  @override
  void initState() {
    super.initState();

    _idController.addListener(() {
      setState(() {
        id = _idController.text;
      });
    });
  }

  @override
  void dispose() {
    _idController.dispose();
    super.dispose();
  }

    void _onNextTap() {
    final idSec = _idController.text;
    if (idSec.isEmpty) {
      print("작동 완료!!!!!!!!! $id");
      return;
    }
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const Userinterestscreen(), 
      ),
    );
    print("작동 완료!!!!!!!!! $id");
  }
void _onBackTap() {
    Navigator.pop(context);
    // print("작동 완료!!!!!!!!! $id , $password");
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: Sizes.size32),
          child: Text(
            "아래 정보를 입력해주세요!",
            style: TextStyle(
              color: Colors.white,
              fontSize: MediaQuery.of(context).size.height * 0.035,
            ),
          ),
        ),
        // 전체 container
        Container(
          padding:const EdgeInsets.symmetric(vertical: Sizes.size24, horizontal: Sizes.size18),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white, width: 5),
          ),
          child: Column(
            children: [
              // 아이디
              Row(
                children: [
                  Text(
                    "아이디",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: MediaQuery.of(context).size.height * 0.03,
                    ),
                  ),
                  Gaps.h24,
                  SizedBox(
          width: MediaQuery.of(context).size.width * 0.425,
          child: TextField(
            controller: _idController,
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white, 
              hintText: "아이디",
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              hintStyle:
                  const TextStyle(color: Colors.grey, fontSize: Sizes.size18),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide:
                    const BorderSide(color: Color(0xFFDFDCDC), width: 1.5),
                gapPadding: Sizes.size2,
              ),
            ),
          ),
        ),
                ],
              ),
              Gaps.v24,
              // 나이
              Row(
                children: [
                  Text(
                    "나이",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: MediaQuery.of(context).size.height * 0.03,
                    ),
                  ),
                  Gaps.h44,
                  SizedBox(
          width: MediaQuery.of(context).size.width * 0.425,
          child: TextField(
            controller: _idController,
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white, 
              hintText: "나이",
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              hintStyle:
                  const TextStyle(color: Colors.grey, fontSize: Sizes.size18),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide:
                    const BorderSide(color: Color(0xFFDFDCDC), width: 1.5),
                gapPadding: Sizes.size2,
              ),
            ),
          ),
        ),
                ],
              ),
               Gaps.v24,
               Row(
                children: [
                  Text(
                    "성별",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: MediaQuery.of(context).size.height * 0.03,
                    ),
                  ),
                   Gaps.h44,
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.425,
                    child: const SelectGender()
                  ),
                ],
              ),
              
            ],
          ),
        ),
        Gaps.v16,
         GestureDetector(
              onTap: _onNextTap,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.85,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  color: Themes.mint,
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 13, horizontal: 20),
                  child: Text(
                    '다음으로',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Themes.kakao_text,
                      fontSize: MediaQuery.of(context).size.height * 0.035,
                    ),
                  ),
                ),
              ),
            ),
            Gaps.v24,
            GestureDetector(
              onTap: _onBackTap,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.85,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  color: Themes.mint,
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 13, horizontal: 20),
                  child: Text(
                    '돌아가기',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Themes.kakao_text,
                      fontSize: MediaQuery.of(context).size.height * 0.035,
                    ),
                  ),
                ),
              ),
            ),
      ],
    ));
  }
}
