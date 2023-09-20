import 'package:flutter/material.dart';

import 'constants/color_constants.dart';
import 'constants/padding_constants.dart';

class AppThemes {
  static final ThemeData lightTheme = ThemeData.from(
    colorScheme: const ColorScheme.light(
      primary: AppColors.primary,
      secondary: AppColors.secondary,
      surface: AppColors.white,
      background: AppColors.white,
      onPrimary: AppColors.white,
      onSecondary: AppColors.black,
      onSurface: AppColors.black,
      onBackground: AppColors.black,
    ),
  ).copyWith(
      appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.white, toolbarHeight: 100),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              minimumSize: const Size(130, 60),
              padding: AppPaddings.leftRightExtraLarge())));

  static final ThemeData darkTheme = ThemeData.from(
    colorScheme: const ColorScheme.dark(
      primary: AppColors.primary,
      secondary: AppColors.secondary,
      surface: AppColors.black,
      background: AppColors.black,
      onPrimary: AppColors.white,
      onSecondary: AppColors.white,
      onSurface: AppColors.white,
      onBackground: AppColors.white,
    ),
    textTheme: Typography.material2018().white,
  );
}
