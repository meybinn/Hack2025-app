import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hack2025_mobile_app/commons/constant/gaps.dart';
import 'package:hack2025_mobile_app/commons/constant/sizes.dart';
import 'package:hack2025_mobile_app/commons/themes.dart';
import 'package:hack2025_mobile_app/home/screens/home_screen.dart';
import 'package:hack2025_mobile_app/regist/widget/checkBox.dart';

class Userinterestscreen extends StatefulWidget {
  const Userinterestscreen({super.key});

  @override
  State<Userinterestscreen> createState() => _UserinterestscreenState();
}

class _UserinterestscreenState extends State<Userinterestscreen> {

 void _onNextTap() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const HomeScreen(), 
      ),
    );
  }
void _onBackTap() {
    Navigator.pop(context);
    // print("작동 완료!!!!!!!!! $id , $password");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
           Padding(
            padding: const EdgeInsets.symmetric(vertical: Sizes.size32),
           child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,  
            children: [
              Text("무엇을 좋아하세요?", 
              style: TextStyle(
                color: Colors.white,
                fontSize: MediaQuery.of(context).size.height * 0.045,
              ),
            ),
              Gaps.v6,
              Text("2개 골라주세요.", 
              style: TextStyle(
                color: Colors.white,
                fontSize: MediaQuery.of(context).size.height * 0.035,
              ),
            ),
          ],
        ),
            ),
          Container(
            padding:const EdgeInsets.symmetric(vertical: Sizes.size24, horizontal: Sizes.size18),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white, width: 5),
            ),
            child: const Column(
              children: [InterestCheckbox()],
            )
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
        ),
      )
    );
  }
}