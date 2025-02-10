import 'package:flutter/material.dart';
import 'package:lynkco/theme/color_config.dart';

class TextstyleConfig {
  static TextStyle largeOnPrimary({
    Color color = const Color(ColorConfig.onPrimaryColor),
    double size = 18.0,
    FontWeight weight = FontWeight.normal,
    FontStyle style = FontStyle.normal,
  }) {
    return TextStyle(
      color: color,
      fontSize: size,
      fontWeight: weight,
      fontStyle: style,
    );
  }

  static TextStyle largeOnSecondary({
    Color color = const Color(ColorConfig.onSecondaryColor),
    double size = 14.0,
    FontWeight weight = FontWeight.normal,
    FontStyle style = FontStyle.normal,
  }) {
    return TextStyle(
      color: color,
      fontSize: size,
      fontWeight: weight,
      fontStyle: style,
    );
  }

  static TextStyle firstSupportText({
    Color color = const Color(ColorConfig.onSecondaryColor),
    double size = 14.0,
    FontWeight weight = FontWeight.normal,
    FontStyle style = FontStyle.normal,
  }) {
    return TextStyle(
      color: color,
      fontSize: size,
      fontWeight: weight,
      fontStyle: style,
    );
  }

  static TextStyle secondSupportText({
    Color color = const Color(ColorConfig.red),
    double size = 14.0,
    FontWeight weight = FontWeight.normal,
    FontStyle style = FontStyle.normal,
  }) {
    return TextStyle(
      color: color,
      fontSize: size,
      fontWeight: weight,
      fontStyle: style,
    );
  }
}
