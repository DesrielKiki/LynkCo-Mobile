import 'package:flutter/material.dart';
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
          body: Center(
            child: AuthTextfield(
                labelText: "username or email",
                //  hintText: "",
                icon: Icons.person,
                obscureText: false,
                controller: _controller,
                keyboardType: TextInputType.name),
          ),
        ));
  }
}
