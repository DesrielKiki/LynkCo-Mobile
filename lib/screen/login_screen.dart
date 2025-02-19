import 'package:flutter/material.dart';
import 'package:lynkco/theme/color_config.dart';
import 'package:lynkco/theme/textstyle_config.dart';
import 'package:lynkco/widget/auth_button.dart';
import 'package:lynkco/widget/auth_support_text.dart';
import 'package:lynkco/widget/auth_textfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _userLoginController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorConfig.primaryColor,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: IntrinsicHeight(
              child: Container(
                height: double.infinity,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 3),
                      ),
                    ],
                    color: (ColorConfig.secondaryColor),
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        "Welcome Back!",
                        style: TextStyleConfig.boldWhite.s20(),
                      ),
                      Text(
                        "We're so excited to see you again!",
                        style: TextStyleConfig.regularGray.s14(),
                      ),
                      const SizedBox(height: 20),
                      AuthTextfield(
                        labelText: "Username or Email",
                        icon: Icons.person,
                        obscureText: false,
                        controller: _userLoginController,
                        keyboardType: TextInputType.name,
                      ),
                      const SizedBox(height: 10),
                      AuthTextfield(
                        labelText: "Password",
                        icon: Icons.person,
                        obscureText: true,
                        controller: _passwordController,
                        keyboardType: TextInputType.name,
                      ),
                      const SizedBox(height: 8),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            GestureDetector(
                              child: Text(
                                "forgot password?",
                                style: TextStyleConfig.regularWhite
                                    .s14()
                                    .copyWith(color: ColorConfig.lightBlue3),
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(height: 24),
                      const AuthButton(buttonText: "Log In"),
                      const SizedBox(height: 16),
                      const Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            AuthSupportText(
                                firstText: "Don't have account?",
                                secondText: "Register"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
