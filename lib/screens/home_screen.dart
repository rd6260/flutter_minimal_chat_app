import 'package:flutter/material.dart';
import 'package:flutter_minimal_chat_app/utils/auth_service.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void logoutFunction() {
    final auth = AuthService();
    auth.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chats"),
        actions: [
          // logout button
          IconButton(
            onPressed: logoutFunction,
            icon: Icon(
              Icons.logout,
            ),
          ),
        ],
      ),
    );
  }
}
