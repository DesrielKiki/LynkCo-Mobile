import 'package:flutter/material.dart';
import 'package:lynkco/theme/color_config.dart';
import 'package:lynkco/theme/textstyle_config.dart';

class AuthButton extends StatefulWidget {
  final String buttonText;
  final Function()? onPressed;

  const AuthButton({super.key, required this.buttonText, this.onPressed});

  @override
  State<AuthButton> createState() => _AuthButtonState();
}

class _AuthButtonState extends State<AuthButton> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: widget.onPressed,
      style: TextButton.styleFrom(
          backgroundColor: (ColorConfig.secondaryColor),
          padding: const EdgeInsets.symmetric(
            vertical: 16,
            horizontal: 12,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          minimumSize: const Size(double.infinity, 50)),
      child: Text(
        widget.buttonText,
        style: TextstyleConfig.boldOnPrimary14(),
      ),
    );
  }
}
