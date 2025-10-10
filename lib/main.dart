import 'package:flutter/material.dart';
import 'package:hack2025_mobile_app/home/screens/home_screen.dart';
import 'package:hack2025_mobile_app/levels/screens/level_screen.dart';
import 'package:hack2025_mobile_app/login/screens/login_screen.dart';

void main() => runApp(const Readable());

class Readable extends StatelessWidget {
  const Readable({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.black,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.black,
        brightness: Brightness.dark,
      ),
      title: 'My App',
      //home: const LoginScreen(),
      home: const HomeScreen(),
      //home: const LevelScreen(),
    );
  }

}