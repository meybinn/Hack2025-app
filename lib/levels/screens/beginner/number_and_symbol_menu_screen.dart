import 'package:flutter/material.dart';
import 'package:hack2025_mobile_app/levels/screens/beginner/number_lesson.dart';
import 'package:hack2025_mobile_app/levels/screens/beginner/symbol_lesson.dart';
import 'package:hack2025_mobile_app/levels/widgets/menu_button.dart';

class NumberSymbolMenuScreen extends StatelessWidget{
  
  
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
              '숫자와 기호',
              style: TextStyle(
                color: Colors.white,
                fontSize: 48,
                fontWeight: FontWeight.w600,
                height: 1.05,
              ),
            ),
            
            const SizedBox(
              height: 100,
            ),

            MenuButton(
              label: '숫자',
              background: color,
              foreground: Colors.black,
              onPressed: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (_) => NumberLesson()),
                  );
                },
              ),

            const SizedBox(
              height: 70,
              ),

            MenuButton(
              label: '기호',
              background: color,
              foreground: Colors.black,
              onPressed: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (_) => SymbolLesson()),
                  );
              },
            ),

            const SizedBox(
              height: 150,
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