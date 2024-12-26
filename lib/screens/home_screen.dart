import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void logoutFunction() {}

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
