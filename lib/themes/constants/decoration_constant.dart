import 'package:flutter/material.dart';

import 'color_constants.dart';

class DecorationConstants {
  static DecorationConstants? _instance;
  static DecorationConstants get instance {
    _instance ??= DecorationConstants._init();
    return _instance!;
  }

  DecorationConstants._init();

  static BoxDecoration greyBorderContainer = BoxDecoration(
      border: Border.all(color: AppColors.softGrey),
      borderRadius: BorderRadius.circular(8),
      color: AppColors.white);

  static BoxDecoration blueBorderContainer = BoxDecoration(
      border: Border.all(color: AppColors.softBlue),
      borderRadius: BorderRadius.circular(8),
      color: AppColors.softBlue);

  static BoxDecoration primaryColorContainer = BoxDecoration(
      borderRadius: BorderRadius.circular(8), color: AppColors.primary);
}
