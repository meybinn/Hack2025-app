import 'package:flutter/material.dart';
import 'package:hack2025_mobile_app/levels/screens/advanced/advanced_level_screen.dart';
import 'package:hack2025_mobile_app/levels/screens/beginner/beginner_level_screen.dart';
import 'package:hack2025_mobile_app/levels/screens/intermediate/intermediate_level_screen.dart';
import 'package:hack2025_mobile_app/levels/widgets/level_card.dart';

class LeveltestScreen extends StatefulWidget {
  const LeveltestScreen({super.key});

  @override
  State<LeveltestScreen> createState() => _LeveltestScreenState();
}

class _LeveltestScreenState extends State<LeveltestScreen> {
  String level = "초급"; // 학습 단계
  @override
  Widget build(BuildContext context) {
    const color = Color(0xFF75B7B3);
    

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            const Text(
              '학습 단계 골라주세요!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.w800,
              ),
            ),
            Text(
              '현재 단계: $level',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.w800,
              ),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                setState(() {
                  level = "초급";
                });
                showDialog(
                    barrierDismissible: false,
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        backgroundColor: Colors.black,
                        title: Text(
                          "$level을 선택하였습니다",
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        actions: [
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text(
                              "확인",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      );
                    });
              },
              child: Container(
                height: 170,
                decoration: BoxDecoration(
                  color: const Color(0xFF2563EB),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "초급",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 55,
                        fontWeight: FontWeight.bold,
                        height: 1.05,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "자모, 숫자와 기호,\n문장와 기타 부호",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                setState(() {
                  level = "중급";
                });
                showDialog(
                    barrierDismissible: false,
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        backgroundColor: Colors.black,
                        title: Text(
                          "$level을 선택하였습니다",
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        actions: [
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                level = "중급";
                              });
                              Navigator.pop(context);
                            },
                            child: const Text(
                              "확인",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      );
                    });
              },
              child: Container(
                height: 170,
                decoration: BoxDecoration(
                  color: const Color(0xFF059669),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "중급",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 55,
                        fontWeight: FontWeight.bold,
                        height: 1.05,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "약자, 약어, 단어",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                setState(() {
                  level = "고급";
                });
                showDialog(
                    barrierDismissible: false,
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        backgroundColor: Colors.black,
                        title: Text(
                          "$level을 선택하였습니다",
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        actions: [
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                level = "고급";
                              });
                              Navigator.pop(context);
                            },
                            child: const Text(
                              "확인",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),

                        ],
                      );
                    });
              },
              child: Container(
                height: 170,
                decoration: BoxDecoration(
                  color: const Color(0xFFDC2626),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "고급",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 55,
                        fontWeight: FontWeight.bold,
                        height: 1.05,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "단문, 장문",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF75B7B3),
                foregroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.reply,
                      size: 50,
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      '돌아가기',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
             
          ],
        ),
      ),
    );
  }
}
