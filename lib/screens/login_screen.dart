import 'package:flutter/material.dart';
import 'package:flutter_minimal_chat_app/widgets/custom_button.dart';
import 'package:flutter_minimal_chat_app/widgets/custom_textfield.dart';

class LoginScreen extends StatelessWidget {
  // Text Field controllers
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final VoidCallback registerNowCallback;

  LoginScreen({super.key, required this.registerNowCallback});

  void loginFunction() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // logo
            Icon(
              Icons.chat,
              size: 60,
              color: Theme.of(context).colorScheme.primary,
            ),
            const SizedBox(height: 50),

            // Welcome message
            Text(
              "Welcome! Lets login in",
              style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 25),
            // email
            CustomTextfield(
              hintText: "Phone Number",
              controller: _phoneNumberController,
            ),
            const SizedBox(height: 10),
            // password
            CustomTextfield(
              hintText: "Password",
              isPassword: true,
              controller: _passwordController,
            ),
            const SizedBox(height: 25),
            // login
            CustomButton(
              text: "Login",
              onTap: loginFunction,
            ),
            const SizedBox(height: 25),
            // register
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account? ",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                GestureDetector(
                  onTap: registerNowCallback,
                  child: Text(
                    "Register now!",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
