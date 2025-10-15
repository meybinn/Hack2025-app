import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:hack2025_mobile_app/levels/screens/advanced/long_sentence/long_sentence1.dart';

class IntroLongSent extends StatefulWidget {
  const IntroLongSent({super.key});

  @override
  State<IntroLongSent> createState() => _IntroLongSentState();
}

class _IntroLongSentState extends State<IntroLongSent> {
  final FlutterTts _tts = FlutterTts();
  bool _isSpeaking = false;
  bool _navigated = false;

  static const _introText =
      "이번 학습에서는 장문를 배워봅니다. "
      "장문은 여러 생각이나 내용을 연결하여 표현하는 긴 문장입니다.";

  @override
  void initState() {
    super.initState();                         
    _tts.awaitSpeakCompletion(true);           
    _tts.setCompletionHandler(() {             
      if (!mounted || _navigated) return;
      _navigated = true;
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => const LongSentence1()),
      );
    });
  }

  Future<void> _speakIntro() async {
    if (_isSpeaking) return;
    setState(() => _isSpeaking = true);
    try {
      await _tts.stop();                       
      await _tts.setLanguage('ko-KR');
      await _tts.setSpeechRate(0.45);
      await _tts.setPitch(1.0);
      await _tts.setVolume(1.0);
      await _tts.speak(_introText);            
    } catch (_) {
      
      if (!mounted || _navigated) return;
      _navigated = true;
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => const LongSentence1()),
      );
    }
  }

  @override
  void dispose() {
    _tts.stop();                               
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
                "장문",
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
                      color: const Color(0xFFFFFF00)
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
