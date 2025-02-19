import 'package:flutter/material.dart';
import 'package:lynkco/theme/color_config.dart';
import 'package:lynkco/theme/textstyle_config.dart';
import 'package:lynkco/widget/auth_button.dart';
import 'package:lynkco/widget/auth_support_text.dart';
import 'package:lynkco/widget/auth_textfield.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController _fullnameController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  bool _termsAgreed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConfig.primaryColor,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Expanded(
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3),
                  ),
                ],
                color: ColorConfig.secondaryColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      "Welcome to LynkCo!",
                      style: TextStyleConfig.boldWhite.s18(),
                    ),
                    Text(
                      "Please create your account first",
                      style: TextStyleConfig.regularGray.s14(),
                    ),
                    const SizedBox(height: 20),
                    AuthTextfield(
                      labelText: "Full Name",
                      icon: Icons.person,
                      obscureText: false,
                      controller: _fullnameController,
                      keyboardType: TextInputType.name,
                    ),
                    const SizedBox(height: 10),
                    AuthTextfield(
                      labelText: "Username",
                      icon: Icons.person,
                      obscureText: false,
                      controller: _usernameController,
                      keyboardType: TextInputType.name,
                    ),
                    const SizedBox(height: 10),
                    AuthTextfield(
                      labelText: "Email",
                      icon: Icons.email,
                      obscureText: false,
                      controller: _emailController,
                      keyboardType: TextInputType.emailAddress,
                    ),
                    const SizedBox(height: 10),
                    AuthTextfield(
                      labelText: "Password",
                      icon: Icons.lock,
                      obscureText: true,
                      controller: _passwordController,
                      keyboardType: TextInputType.visiblePassword,
                    ),
                    const SizedBox(height: 10),
                    AuthTextfield(
                      labelText: "Confirm Password",
                      icon: Icons.lock,
                      obscureText: true,
                      controller: _confirmPasswordController,
                      keyboardType: TextInputType.visiblePassword,
                    ),
                    const SizedBox(height: 12),
                    Row(
                      children: [
                        Checkbox(
                          value: _termsAgreed,
                          onChanged: (bool? value) {
                            setState(() {
                              _termsAgreed = value!;
                            });
                          },
                          activeColor: ColorConfig.lightBlue3,
                        ),
                        Expanded(
                          child: Text(
                            "I agree to the Terms and Conditions",
                            style: TextStyleConfig.regularWhite.s14(),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    const AuthButton(buttonText: "Register"),
                    const SizedBox(height: 16),
                    const Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          AuthSupportText(
                              firstText: "Dont't have account?",
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
      ),
    );
  }
}
