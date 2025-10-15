import 'package:flutter/material.dart';
import 'package:hack2025_mobile_app/levels/screens/advanced/long_sentence_part.dart';
import 'package:hack2025_mobile_app/levels/screens/advanced/short_sentence_part.dart';
import 'package:hack2025_mobile_app/levels/screens/beginner/jamo_menu_screen.dart';
import 'package:hack2025_mobile_app/levels/screens/beginner/number_and_symbol_menu_screen.dart';
import 'package:hack2025_mobile_app/levels/widgets/menu_button.dart';

class AdvancedLevelScreen extends StatelessWidget {
  
  const AdvancedLevelScreen({super.key});
  
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
              '고급',
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
              'Advanced',
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
              label: '단문',
              background: color,
              foreground: Colors.black,
              onPressed: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (_) => ShortSentencePart(),
                    ),
                  );
                },
              ),

            const SizedBox(
              height: 20,
              ),

            MenuButton(
              label: '장문',
              background: color,
              foreground: Colors.black,
            onPressed: () {
              Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (_) => LongSentencePart(),
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