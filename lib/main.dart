import 'package:flutter/material.dart';
import 'package:flutter_minimal_chat_app/screens/auth_screen.dart';
import 'package:flutter_minimal_chat_app/themes/light_mode.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AuthScreen(),
      theme: lightMode,
      debugShowCheckedModeBanner: false,
    );
  }
}
