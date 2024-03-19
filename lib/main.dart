import 'package:flutter/material.dart';
import 'package:flutter_firebase/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: WelcomeScreen(),
      ),
    );
  }
}
