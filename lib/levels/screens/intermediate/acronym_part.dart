import 'package:flutter/material.dart';
import 'package:hack2025_mobile_app/levels/screens/intermediate/intro_acronym_lesson.dart';

class AcronymPart extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            const Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.fromLTRB(22, 40, 22, 0),
                child: Column(
                  children: const [
                    Text(
                      "약어를\n배워볼까요?",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFFFFFF00),
                        fontSize: 48,
                        fontWeight: FontWeight.w600,
                        height: 1.5,
                      ),
                    ),
                    SizedBox(height: 36,),
                  ],
                ),
              ),
            ),
            //const SizedBox(height: 50,),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 24,
              ),
              child: SizedBox(
                height: 90,
                width: 300,
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => const IntroAcronymLesson(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    textStyle: const TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  child: const Text("시작"),
                ),
              ),
            ),
            const SizedBox(height: 150,),

            Padding(
              padding: const EdgeInsets.only(left: 22, right: 22, bottom: 22),
              child: Align(
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
            ),
          const SizedBox(height: 80,),
          ],
        ),
      ),
    );
  }
}