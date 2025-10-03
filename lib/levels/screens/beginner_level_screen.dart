import 'package:flutter/material.dart';
import 'package:hack2025_mobile_app/levels/screens/jamo_menu_screen.dart';
import 'package:hack2025_mobile_app/levels/screens/number_and_symbol_menu_screen.dart';
import 'package:hack2025_mobile_app/levels/widgets/menu_button.dart';

class BeginnerLevelScreen extends StatelessWidget{
  
  const BeginnerLevelScreen({super.key});
  
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
              '초급',
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
              'Beginner',
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
              label: '자모',
              background: color,
              foreground: Colors.black,
              onPressed: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (_) => const JamoMenuScreen(),
                    ),
                  );
                },
              ),

            const SizedBox(
              height: 20,
              ),

            MenuButton(
              label: '숫자와 기호',
              background: color,
              foreground: Colors.black,
            onPressed: () {
              Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (_) => NumberSymbolMenuScreen(),
                    ),
                  );
            },
            ),

            const SizedBox(
              height: 20,
              ),

            MenuButton(
              label: '문자와 기타 무호',
              background: color,
              foreground: Colors.black,
              onPressed: () {},
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