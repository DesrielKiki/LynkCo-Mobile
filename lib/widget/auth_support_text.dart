import 'package:flutter/material.dart';
import 'package:lynkco/theme/textstyle_config.dart';

class AuthSupportText extends StatefulWidget {
  final String firstText;
  final String secondText;
  final Function()? onPressed;

  const AuthSupportText(
      {super.key,
      required this.firstText,
      required this.secondText,
      this.onPressed});

  @override
  State<AuthSupportText> createState() => _AuthSupportTextState();
}

class _AuthSupportTextState extends State<AuthSupportText> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          widget.firstText,
          style: TextstyleConfig.regularOnPrimary14(),
        ),
        const SizedBox(width: 8),
        GestureDetector(
            onTap: () {},
            child: Text(
              widget.secondText,
              style: TextstyleConfig.regularOnPrimary14(),
            ))
      ],
    );
  }
}
