import 'package:flutter/material.dart';
import 'package:lynkco/theme/color_config.dart';
import 'package:lynkco/widget/auth_button.dart';
import 'package:lynkco/widget/auth_support_text.dart';
import 'package:lynkco/widget/auth_textfield.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();

  MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Scaffold(
          backgroundColor: ColorConfig.secondaryColor,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AuthTextfield(
                    labelText: "labelText",
                    icon: Icons.ac_unit,
                    obscureText: true,
                    controller: _controller,
                    keyboardType: TextInputType.multiline),
                const SizedBox(
                  height: 32,
                ),
                const AuthButton(buttonText: "buttonText"),
                const AuthSupportText(
                    firstText: "firstText?", secondText: "secondText")
              ],
            ),
          ),
        ));
  }
}
