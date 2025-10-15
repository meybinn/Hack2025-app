import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:hack2025_mobile_app/levels/screens/beginner/jamo_lesson/vowel_chain_les3.dart';
import 'package:hack2025_mobile_app/levels/screens/intermediate/vocab/vocab_les2.dart';
import 'package:hack2025_mobile_app/levels/widgets/braille_cell.dart';

class VocabLes1 extends StatefulWidget {
  const VocabLes1({
    super.key,
  });

  @override
  State<VocabLes1> createState() => _VocabLes1State();
}

class _VocabLes1State extends State<VocabLes1> {
  final FlutterTts _tts = FlutterTts();
  bool _isSpeaking = false;
  bool _navigated = false;

  static const String _utterance = "안녕하세요";

  static const Color _text = Color(0xFFFFFF00);
  static const Color _dotOff = Color(0xFF807E7E);
  static const Color _dotOn = Colors.white;

  @override
  void initState() {
    super.initState();
    _autoSpeak();
  }

  Future<void> _autoSpeak() async {
    if (_isSpeaking) return;
    _isSpeaking = true;
    try {
      await _tts.stop();
      await _tts.awaitSpeakCompletion(true);
      await _tts.setLanguage("ko-KR");
      await _tts.setSpeechRate(0.45);
      await _tts.setPitch(1.0);
      await _tts.setVolume(1.0);
      await _tts.speak(_utterance);
    } catch (_) {}
  }

  @override
  void dispose() {
    _tts.stop(); 
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 60,
                ),
                const Icon(
                  Icons.volume_up_outlined,
                  color: Color(0xFFFFFF00),
                  size: 70,
                  ),
                const SizedBox(
                  height: 90,
                ),
                const SizedBox(
                    height: 24,
                  ),
                const Text(
                    "안녕하세요",
                    style: TextStyle(
                      fontSize: 60,
                      fontWeight: FontWeight.w600,
                      color: _text,
                    ),
                  ),
              const Spacer(),
              SizedBox(
                width: 330,
                height: 100,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    padding: const EdgeInsets.symmetric(vertical: 18),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 0,
                  ),
                  onPressed: () {
                    if (_navigated) return;
                    _navigated = true;
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => const VocabLes2(),
                      ),
                    );
                  },
                  child: const Text(
                    '다음',
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              SizedBox(
                width: 330,
                height: 100,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF75B7B3),
                    foregroundColor: Colors.black,
                    padding: const EdgeInsets.symmetric(vertical: 18),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 0,
                  ),
                  onPressed: () => Navigator.of(context).pop(),
                  child: const Text(
                    '돌아가기',
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
      ),
    );
  }
}
