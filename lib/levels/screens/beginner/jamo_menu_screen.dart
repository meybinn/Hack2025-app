import 'package:flutter/material.dart';
import 'package:hack2025_mobile_app/commons/constant/gaps.dart';
import 'package:hack2025_mobile_app/levels/screens/beginner/jamo_batchim.dart';
import 'package:hack2025_mobile_app/levels/screens/beginner/jamo_first_sound.dart';
import 'package:hack2025_mobile_app/levels/screens/beginner/jamo_single_consonant.dart';
import 'package:hack2025_mobile_app/levels/screens/beginner/jamo_vowel.dart';
import 'package:hack2025_mobile_app/levels/screens/beginner/jamo_vowel_chain.dart';
import 'package:hack2025_mobile_app/levels/widgets/square_card.dart';

class JamoMenuScreen extends StatelessWidget{
  
  const JamoMenuScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.fromLTRB(20, 20, 20, 28),
          children: [
            const Text(
              '자모',
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
                fontWeight: FontWeight.w800,
              ),
            ),
            const SizedBox(
              height: 55,
              ),
            GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              childAspectRatio: 1.0,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                SquareCard(
                  label: '첫 소리로\n쓰인\n자음자',
                  background: Color(0xFF75B7B3), 
                  foreground: Colors.black, 
                  onTap: () {
                    Navigator.push(context,
                    MaterialPageRoute(builder: (_) => JamoFirstSound()),
                    );
                  },
                  ),
                SquareCard(
                  label: '받침으로\n쓰인\n자음자',
                  background: Color(0xFF75B7B3), 
                  foreground: Colors.black, 
                  onTap: () {
                    Navigator.push(context,
                    MaterialPageRoute(builder: (_) => JamoBatchim()),
                    );
                  },
                  ),
                SquareCard(
                  label: '모음자',
                  background: Color(0xFF75B7B3), 
                  foreground: Colors.black, 
                  onTap: () {
                    Navigator.push(context,
                    MaterialPageRoute(builder: (_) => JamoVowel()),
                    );
                  },
                  ),
                SquareCard(
                  label: '단독으로\n쓰인\n자모',
                  background: Color(0xFF75B7B3), 
                  foreground: Colors.black, 
                  onTap: () {
                    Navigator.push(
                      context, 
                      MaterialPageRoute(
                        builder: (_) => JamoSingleConsonant()),
                );
                },
                  ),
                SquareCard(
                  label: '모음 연쇄',
                  background: Color(0xFF75B7B3), 
                  foreground: Colors.black, 
                  onTap: () {
                    Navigator.push(
                      context, 
                      MaterialPageRoute(
                        builder: (_) => JamoVowelChain()),
                        
                  );
                  },
                  ),
                SquareCard(
                  background: Color(0xFF75B7B3), 
                  foreground: Colors.black, 
                  onTap: () => Navigator.pop(context),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.reply,
                        size: 55,
                        color: Colors.black,
                      ),
                      Gaps.h10,
                      Text(
                        '돌아가기',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 32,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}