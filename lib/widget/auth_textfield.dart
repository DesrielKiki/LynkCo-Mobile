import 'package:flutter/material.dart';
import 'package:lynkco/theme/color_config.dart';
import 'package:lynkco/theme/textstyle_config.dart';

class AuthTextfield extends StatefulWidget {
  final String labelText;
//  final String hintText;
  final IconData icon;
  final bool obscureText;
  final TextEditingController controller;
  final TextInputType keyboardType;

  const AuthTextfield(
      {super.key,
      required this.labelText,
      //  required this.hintText,
      required this.icon,
      required this.obscureText,
      required this.controller,
      required this.keyboardType});

  @override
  State<AuthTextfield> createState() => _AuthTextfieldState();
}

class _AuthTextfieldState extends State<AuthTextfield> {
  late bool obsecureText;

  @override
  void initState() {
    super.initState();
    obsecureText = widget.obscureText;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: widget.keyboardType,
      controller: widget.controller,
      obscureText: obsecureText,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(
          vertical: 14,
          horizontal: 16,
        ),
        //    hintText: widget.hintText,
        labelText: widget.labelText,
        labelStyle: TextstyleConfig.largeOnPrimary(),
        suffixIcon: widget.obscureText
            ? IconButton(
                onPressed: () {
                  setState(() {
                    obsecureText = !obsecureText;
                  });
                },
                icon: Icon(
                  obsecureText ? Icons.visibility : Icons.visibility_off,
                  color: const Color(
                    ColorConfig.onSecondaryColor,
                  ),
                ),
              )
            : Icon(
                widget.icon,
                color: const Color(
                  ColorConfig.onSecondaryColor,
                ),
              ),
        hintStyle: TextstyleConfig.largeOnPrimary(),
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            20,
          ),
        ),
      ),
    );
  }
}
