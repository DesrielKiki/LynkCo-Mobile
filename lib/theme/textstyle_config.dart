import 'package:flutter/material.dart';
import 'package:lynkco/theme/color_config.dart'; // Pastikan Anda mengimpor color_config.dart

class TextStyleConfig {
  static final BoldTertiaryStyle boldTertiary = BoldTertiaryStyle();
  static final BoldWhiteStyle boldWhite = BoldWhiteStyle();
  static final RegularTertiaryStyle regularTertiary = RegularTertiaryStyle();
  static final RegularWhiteStyle regularWhite = RegularWhiteStyle();
  static final RegularGrayStyle regularGray = RegularGrayStyle();
}

class BoldTertiaryStyle {
  TextStyle _createTextStyle(double size) {
    return TextStyle(
      color: ColorConfig.tertiaryColor, // Warna default, bisa diubah
      fontSize: size,
      fontWeight: FontWeight.bold,
    );
  }

  TextStyle s14() => _createTextStyle(14);
  TextStyle s16() => _createTextStyle(16);
  TextStyle s18() => _createTextStyle(18);
  TextStyle s20() => _createTextStyle(20);

  // Anda bisa menambahkan ukuran lain sesuai kebutuhan
}

class BoldWhiteStyle {
  TextStyle _createTextStyle(double size) {
    return TextStyle(
      color: ColorConfig.solidWhite, // Warna default, bisa diubah
      fontSize: size,
      fontWeight: FontWeight.bold,
    );
  }

  TextStyle s14() => _createTextStyle(14);
  TextStyle s16() => _createTextStyle(16);
  TextStyle s18() => _createTextStyle(18);
  TextStyle s20() => _createTextStyle(20);

  // Anda bisa menambahkan ukuran lain sesuai kebutuhan
}

class RegularTertiaryStyle {
  TextStyle _createTextStyle(double size) {
    return TextStyle(
      color: ColorConfig.tertiaryColor, // Warna default, bisa diubah
      fontSize: size,
      fontWeight: FontWeight.normal,
    );
  }

  TextStyle s14() => _createTextStyle(14);
  TextStyle s16() => _createTextStyle(16);
  TextStyle s18() => _createTextStyle(18);
  TextStyle s20() => _createTextStyle(20);

  // Anda bisa menambahkan ukuran lain sesuai kebutuhan
}

class RegularWhiteStyle {
  TextStyle _createTextStyle(double size) {
    return TextStyle(
      color: ColorConfig.solidWhite, // Warna default, bisa diubah
      fontSize: size,
      fontWeight: FontWeight.normal,
    );
  }

  TextStyle s14() => _createTextStyle(14);
  TextStyle s16() => _createTextStyle(16);
  TextStyle s18() => _createTextStyle(18);
  TextStyle s20() => _createTextStyle(20);

  // Anda bisa menambahkan ukuran lain sesuai kebutuhan
}

class RegularGrayStyle {
  TextStyle _createTextStyle(double size) {
    return TextStyle(
      color: ColorConfig.gray, // Warna default, bisa diubah
      fontSize: size,
      fontWeight: FontWeight.normal,
    );
  }

  TextStyle s14() => _createTextStyle(14);
  TextStyle s16() => _createTextStyle(16);
  TextStyle s18() => _createTextStyle(18);
  TextStyle s20() => _createTextStyle(20);

  // Anda bisa menambahkan ukuran lain sesuai kebutuhan
}
