import 'package:flutter/material.dart';
import 'package:flutter_minimal_chat_app/widgets/custom_button.dart';
import 'package:flutter_minimal_chat_app/widgets/custom_textfield.dart';

class RegisterScreen extends StatelessWidget {
  // Text Field controllers
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  final VoidCallback loginNowCallback;
  RegisterScreen({super.key, required this.loginNowCallback});

  void registerFunction() {}

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
              "Let's create an account for you",
              style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 25),

            // Enter your email
            CustomTextfield(
              hintText: "Phone Number",
              controller: _phoneNumberController,
            ),
            const SizedBox(height: 10),

            // enter your password
            CustomTextfield(
              hintText: "Password",
              isPassword: true,
              controller: _passwordController,
            ),
            const SizedBox(height: 10),
            // confirm your password
            CustomTextfield(
              hintText: "Confirm Password",
              isPassword: true,
              controller: _confirmPasswordController,
            ),
            const SizedBox(height: 25),
            // login
            CustomButton(
              text: "Register",
              onTap: registerFunction,
            ),

            const SizedBox(height: 25),

            // already have an account? login now
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account? ",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                GestureDetector(
                  onTap: loginNowCallback,
                  child: Text(
                    "Login now",
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
