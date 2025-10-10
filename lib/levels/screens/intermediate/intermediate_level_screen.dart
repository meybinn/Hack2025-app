import 'package:flutter/material.dart';
import 'package:hack2025_mobile_app/levels/screens/intermediate/abbreviation_part.dart';
import 'package:hack2025_mobile_app/levels/screens/intermediate/acronym_part.dart';
import 'package:hack2025_mobile_app/levels/screens/intermediate/vocab_part.dart';
import 'package:hack2025_mobile_app/levels/widgets/menu_button.dart';

class IntermediateLevelScreen extends StatelessWidget{
  
  const IntermediateLevelScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    const color = Color(0xFF75B7B3);

    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.fromLTRB(22, 22, 22, 28),
          children: [
            const Text(
              '중급',
              style: TextStyle(
                color: Colors.white,
                fontSize: 48,
                fontWeight: FontWeight.w600,
                height: 1.05,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Intermediate',
              style: TextStyle(
                color: Colors.white.withOpacity(0.9),
                fontSize: 32,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 45,
            ),

            MenuButton(
              label: '약자',
              background: color,
              foreground: Colors.black,
              onPressed: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (_) => AcronymPart(),
                    ),
                  );
              },
              ),

            const SizedBox(
              height: 20,
              ),

            MenuButton(
              label: '약어',
              background: color,
              foreground: Colors.black,
            onPressed: () {
              Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (_) => AbbreviationPart(),
                    ),
                  );
            },
            ),

            const SizedBox(
              height: 20,
              ),

            MenuButton(
              label: '단어',
              background: color,
              foreground: Colors.black,
              onPressed: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (_) => VocabPart(),
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
                        fontSize: 40,
                        fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        )
      ),
    );
  }
}