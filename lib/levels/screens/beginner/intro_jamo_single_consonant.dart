import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:hack2025_mobile_app/levels/screens/beginner/jamo_lesson/part1_first_cons.dart';

class IntroJamoSingleConsonant extends StatefulWidget {
  const IntroJamoSingleConsonant({super.key});

  @override
  State<IntroJamoSingleConsonant> createState() => _IntroJamoSingleConsonantState();
}

class _IntroJamoSingleConsonantState extends State<IntroJamoSingleConsonant> {
  final FlutterTts _tts = FlutterTts();
  bool _isSpeaking = false;
  bool _navigated = false;

  static const _introText =
      "이번 학습에서는 첫소리로 쓰인 자음자를 배워봅니다. "
      "첫소리는 글자의 맨 앞에서 소리를 내는 자음을 말합니다.";

  @override
  void initState() {
    super.initState();                         // ✅ wajib
    _tts.awaitSpeakCompletion(true);           // ✅ tunggu selesai
    _tts.setCompletionHandler(() {             // ✅ pindah setelah selesai
      if (!mounted || _navigated) return;
      _navigated = true;
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => const Part1FirstCons()),
      );
    });
  }

  Future<void> _speakIntro() async {
    if (_isSpeaking) return;
    setState(() => _isSpeaking = true);
    try {
      await _tts.stop();                       // bersihkan antrian
      await _tts.setLanguage('ko-KR');
      await _tts.setSpeechRate(0.45);
      await _tts.setPitch(1.0);
      await _tts.setVolume(1.0);
      await _tts.speak(_introText);            // selesai → handler navigate
    } catch (_) {
      // fallback: kalau TTS gagal, tetap lanjut
      if (!mounted || _navigated) return;
      _navigated = true;
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => const Part1FirstCons()),
      );
    }
  }

  @override
  void dispose() {
    _tts.stop();                               // jangan _tts.dispose()
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const yellow = Color(0xFFFFFF00);
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 60),
            const Align(
              alignment: Alignment.center,
              child: Text(
                "첫소리로 쓰인\n자음자",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: yellow,
                  fontSize: 48,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            const SizedBox(height: 100),
            Semantics(
              button: true,
              label: '재생',
              child: Material(
                child: InkWell(
                  onTap: _isSpeaking ? null : _speakIntro,
                  child: SizedBox(
                    width: 140,
                    height: 140,
                    child: Icon(
                          _isSpeaking ? Icons.pause_outlined
                          : Icons.play_arrow,
                      size: 150,
                      color: Color(0xFFFFFF00)
                    ),
                  ),
                ),
              ),
            ),
            const Spacer(),
            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}
