import 'package:flutter/material.dart';
import 'package:hack2025_mobile_app/levels/screens/beginner_level_screen.dart';
import 'package:hack2025_mobile_app/levels/screens/intermediate_level_screen.dart';
import 'package:hack2025_mobile_app/levels/widgets/level_card.dart';

class LevelScreen extends StatelessWidget{
  
  const LevelScreen({
    super.key,
  });
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 28),
          children: [
            LevelCard(
              color: const Color(0xFF2563EB),
              titleKo: '초급',
              titleEn: 'Beginner',
              bullets: [
                '자모',
                '숫자와 기호',
                '문장와 기타 부호',
              ],
            onTap: () {
              Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (_) => const BeginnerLevelScreen(),
                  ),
                  );
            },
            ),
            const SizedBox(
              height: 20,
            ),
            LevelCard(
              color: Color(0xFF059669), 
              titleKo: '중급', 
              titleEn: 'Intermediate', 
              bullets: [
                '약자',
                '약어',
                '단어',
                ],
              onTap: () {
                Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (_) => const IntermediateLevelScreen(),
                  ),
                );
              },
            ),
             const SizedBox(
              height: 20,
            ),
            LevelCard(
              color: Color(0xFFDC2626), 
              titleKo: '고급', 
              titleEn: 'Advanced', 
              bullets: [
                '단문',
                '문장',
              ],
              onTap: () {
                Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (_) => const IntermediateLevelScreen(),
                  ),
                );
              },
              ),
            const SizedBox(
              height: 45,
            ),
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                height: 90,
                width: 300,
                child: ElevatedButton(
                  onPressed: () => Navigator.pop(context),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF75B7B3),
                    foregroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                  ),
                ),
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
                        fontSize: 32,
                        fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
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