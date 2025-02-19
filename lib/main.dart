import 'package:flutter/material.dart';
import 'package:lynkco/screen/auth/register_screen.dart';
import 'package:lynkco/theme/color_config.dart';
import 'package:lynkco/widget/auth_button.dart';
import 'package:lynkco/widget/auth_support_text.dart';
import 'package:lynkco/widget/auth_textfield.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const RegisterScreen());
  }
}
