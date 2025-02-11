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
        body: Center(
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: IntrinsicHeight(
          child: Container(
            height: double.infinity,
            decoration: BoxDecoration(
                color: const Color(ColorConfig.secondaryColor),
                borderRadius: BorderRadius.circular(20)),
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Selamat datang di LynkCo",
                    style:
                        TextstyleConfig.boldOnPrimary16(color: (Colors.white)),
                  ),
                  const SizedBox(height: 16),
                  AuthTextfield(
                    labelText: "Username or Email",
                    icon: Icons.person,
                    obscureText: false,
                    controller: _userLoginController,
                    keyboardType: TextInputType.name,
                  ),
                  const SizedBox(height: 12),
                  AuthTextfield(
                    labelText: "Password",
                    icon: Icons.person,
                    obscureText: true,
                    controller: _passwordController,
                    keyboardType: TextInputType.name,
                  ),
                  const SizedBox(height: 20),
                  const AuthButton(buttonText: "Login Kang"),
                  const AuthSupportText(
                      firstText: "anjay mabar", secondText: "gacor king")
                ],
              ),
            ),
          ),
        ),
      ),
    ));
  }
}
