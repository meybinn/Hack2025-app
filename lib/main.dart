import 'package:flutter/material.dart';
import 'package:hack2025_mobile_app/login/screens/login_screen.dart';

// void main() async {
//   // Set up the SettingsController, which will glue user settings to multiple
//   // Flutter Widgets.
//   final settingsController = SettingsController(SettingsService());

//   // Load the user's preferred theme while the splash screen is displayed.
//   // This prevents a sudden theme change when the app is first displayed.
//   await settingsController.loadSettings();

//   // Run the app and pass in the SettingsController. The app listens to the
//   // SettingsController for changes, then passes it further down to the
//   // SettingsView.
//   runApp(MyApp(settingsController: settingsController));
// }

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
      home: const LoginScreen(),
    );
  }

}
