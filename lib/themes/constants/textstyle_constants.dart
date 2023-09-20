import 'package:flutter/widgets.dart';

class AppTextSyles {
  AppTextSyles._();

  static TextStyle redHatDisplay({
    FontWeight? fontWeight,
    Color? textColor,
    required double fontSize,
  }) {
    return TextStyle(
        fontFamily: 'RedHatDisplay',
        fontWeight: fontWeight,
        fontSize: fontSize,
        color: textColor);
  }

  static TextStyle RedHatDisplayExtraBold({
    FontWeight? fontWeight,
    Color? textColor,
    required double fontSize,
  }) {
    return TextStyle(
        fontFamily: 'RedHatDisplay-ExtraBold',
        fontWeight: fontWeight,
        fontStyle: FontStyle.normal,
        fontSize: fontSize,
        color: textColor);
  }

  static TextStyle RedHatDisplayBold({
    FontWeight? fontWeight,
    Color? textColor,
    required double fontSize,
  }) {
    return TextStyle(
        fontFamily: 'RedHatDisplay-Bold',
        fontWeight: fontWeight,
        fontStyle: FontStyle.normal,
        fontSize: fontSize,
        color: textColor);
  }
}

class AppFontWeights {
  AppFontWeights._();

  static const FontWeight black = FontWeight.w900;
  static const FontWeight bold = FontWeight.w700;
  static const FontWeight extraBold = FontWeight.w800;
  static const FontWeight light = FontWeight.w300;
  static const FontWeight normal = FontWeight.normal;
  static const FontWeight medium = FontWeight.w500;
  static const FontWeight regular = FontWeight.w400;
  static const FontWeight semiBold = FontWeight.w600;
}

class AppFontFontSizes {
  AppFontFontSizes._();

  // 2'şer artan boyutlar
  static double s6 = 6.0;
  static double s8 = 8.0;
  static double s10 = 10.0;
  static double s12 = 12.0;
  static double s14 = 14.0;
  static double s16 = 16.0;
  static double s18 = 18.0;
  static double s20 = 20.0;
  static double s22 = 22.0;
  static double s24 = 24.0;
  static double s26 = 26.0;
  static double s28 = 28.0;
  static double s30 = 30.0;
  static double s35 = 35.0;
  static double s40 = 40.0;
  static double s45 = 45.0;
  static double s50 = 50.0;
  static double s55 = 55.0;
  static double s60 = 60.0;
  static double s70 = 70.0;
}
