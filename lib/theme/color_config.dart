import 'package:flutter/material.dart';

class ColorConfig {
  static const Color primaryColor = lightBlue;
  static const Color secondaryColor = darkerBlue;
  static const Color tertiaryColor = darkerBlue2;

  static const Color darkerBlue = Color(0xff242b4a);
  static const Color darkerBlue2 = Color(0xff374066);
  static const Color lightBlue = Color(0xff455080);
  static const Color lightBlue2 = Color(0xff323c66);

  static const Color onPrimaryColor = solidWhite;
  static const Color onSecondaryColor = solidWhite;
  static const Color solidWhite = Color(0xffF6F6F6);
  static const Color black = Color(0xff080808);
  static const Color softCyan = Color(0xff60EFFF);
  static const Color darkBlue = Color(0xff0061FF);
  static const Color gray = Color(0xffD2D2D2);
  static const Color darkGrey = Color(0xff7D7B80);
  static const Color redWarning = Color(0xffFF0000);
  static const Color green = Color(0xFF0FD318);
  static const LinearGradient gradientBrand = LinearGradient(colors: [
    darkBlue,
    softCyan,
  ], begin: Alignment.topCenter, end: Alignment.bottomCenter);
  static const LinearGradient gradientBrandReverse = LinearGradient(colors: [
    softCyan,
    darkBlue,
  ], begin: Alignment.topCenter, end: Alignment.bottomCenter);
}
