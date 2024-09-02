// lib/main.dart
import 'package:flutter/material.dart';
// import 'LoginPage.dart'; // Import the login page
import 'RegisterPage.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: "AIzaSyCMNXl8aCWEG1XKZJ6FwjXgtg5zllQJKr0",
      projectId: "flutter-web-system",
      messagingSenderId: "333594528003",
      appId: "1:333594528003:web:2d24839388c7d25dbec136",
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 58, 183, 152)),
        useMaterial3: true,
      ),
      home: const RegisterPage(), // Set LoginPage as the home page
    );
  }
}
