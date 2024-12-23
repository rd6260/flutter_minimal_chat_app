import 'package:flutter/material.dart';
import 'package:flutter_minimal_chat_app/screens/login_screen.dart';
import 'package:flutter_minimal_chat_app/screens/register_screen.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  String authScreenType = "login";

  void loginAndRegisterScreenSwitch() {
    if (authScreenType == "login") {
      authScreenType = "register";
    } else {
      authScreenType = "login";
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    if (authScreenType == "login") {
      return LoginScreen(
        registerNowCallback: loginAndRegisterScreenSwitch,
      );
    } else {
      return RegisterScreen(
        loginNowCallback: loginAndRegisterScreenSwitch,
      );
    }
  }
}
