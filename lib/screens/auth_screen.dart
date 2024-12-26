import 'package:flutter/material.dart';
import 'package:flutter_minimal_chat_app/screens/login_screen.dart';
import 'package:flutter_minimal_chat_app/screens/register_screen.dart';


enum _AuthScreenType {
  loginScreen,
  registrationScreen,
}

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  _AuthScreenType authScreenType = _AuthScreenType.loginScreen;

  void loginAndRegisterScreenSwitch() {
    if (authScreenType == _AuthScreenType.loginScreen) {
      authScreenType = _AuthScreenType.registrationScreen;
    } else {
      authScreenType = _AuthScreenType.loginScreen;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    if (authScreenType == _AuthScreenType.loginScreen) {
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
