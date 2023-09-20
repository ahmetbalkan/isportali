import 'package:flutter/material.dart';

class AppPaddings {
  static AppPaddings? _instance;
  static AppPaddings get instance {
    _instance ??= AppPaddings._init();
    return _instance!;
  }

  AppPaddings._init();
  static const double small = 8.0;
  static const double medium = 16.0;
  static const double large = 32.0;
  static const double xLarge = 64.0;
  static const double xxLarge = 128.0;
  static const double xxxLarge = 256.0;
  static const double x4Large = 512.0;

  // Top padding
  static EdgeInsets topSmall() => const EdgeInsets.only(top: small);
  static EdgeInsets topMedium() => const EdgeInsets.only(top: medium);
  static EdgeInsets topLarge() => const EdgeInsets.only(top: large);
  static EdgeInsets topExtraLarge() => const EdgeInsets.only(top: xLarge);
  static EdgeInsets topXXLarge() => const EdgeInsets.only(top: xxLarge);
  static EdgeInsets topXXXLarge() => const EdgeInsets.only(top: xxxLarge);
  static EdgeInsets topX4Large() => const EdgeInsets.only(top: x4Large);

  // Bottom padding
  static EdgeInsets bottomSmall() => const EdgeInsets.only(bottom: small);
  static EdgeInsets bottomMedium() => const EdgeInsets.only(bottom: medium);
  static EdgeInsets bottomLarge() => const EdgeInsets.only(bottom: large);
  static EdgeInsets bottomExtraLarge() => const EdgeInsets.only(bottom: xLarge);
  static EdgeInsets bottomXXLarge() => const EdgeInsets.only(bottom: xxLarge);
  static EdgeInsets bottomXXXLarge() => const EdgeInsets.only(bottom: xxxLarge);
  static EdgeInsets bottomX4Large() => const EdgeInsets.only(bottom: x4Large);

  // Left padding
  static EdgeInsets leftSmall() => const EdgeInsets.only(left: small);
  static EdgeInsets leftMedium() => const EdgeInsets.only(left: medium);
  static EdgeInsets leftLarge() => const EdgeInsets.only(left: large);
  static EdgeInsets leftExtraLarge() => const EdgeInsets.only(left: xLarge);
  static EdgeInsets leftXXLarge() => const EdgeInsets.only(left: xxLarge);
  static EdgeInsets leftXXXLarge() => const EdgeInsets.only(left: xxxLarge);
  static EdgeInsets leftX4Large() => const EdgeInsets.only(left: x4Large);

  // Right padding
  static EdgeInsets rightSmall() => const EdgeInsets.only(right: small);
  static EdgeInsets rightMedium() => const EdgeInsets.only(right: medium);
  static EdgeInsets rightLarge() => const EdgeInsets.only(right: large);
  static EdgeInsets rightExtraLarge() => const EdgeInsets.only(right: xLarge);
  static EdgeInsets rightXXLarge() => const EdgeInsets.only(right: xxLarge);
  static EdgeInsets rightXXXLarge() => const EdgeInsets.only(right: xxxLarge);
  static EdgeInsets rightX4Large() => const EdgeInsets.only(right: x4Large);

  // Top and Bottom padding
  static EdgeInsets topBottomSmall() =>
      const EdgeInsets.symmetric(vertical: small);
  static EdgeInsets topBottomMedium() =>
      const EdgeInsets.symmetric(vertical: medium);
  static EdgeInsets topBottomLarge() =>
      const EdgeInsets.symmetric(vertical: large);
  static EdgeInsets topBottomExtraLarge() =>
      const EdgeInsets.symmetric(vertical: xLarge);
  static EdgeInsets topBottomXXLarge() =>
      const EdgeInsets.symmetric(vertical: xxLarge);
  static EdgeInsets topBottomXXXLarge() =>
      const EdgeInsets.symmetric(vertical: xxxLarge);
  static EdgeInsets topBottomX4Large() =>
      const EdgeInsets.symmetric(vertical: x4Large);

  // Left and Right padding
  static EdgeInsets leftRightSmall() =>
      const EdgeInsets.symmetric(horizontal: small);
  static EdgeInsets leftRightMedium() =>
      const EdgeInsets.symmetric(horizontal: medium);
  static EdgeInsets leftRightLarge() =>
      const EdgeInsets.symmetric(horizontal: large);
  static EdgeInsets leftRightExtraLarge() =>
      const EdgeInsets.symmetric(horizontal: xLarge);
  static EdgeInsets leftRightXXLarge() =>
      const EdgeInsets.symmetric(horizontal: xxLarge);
  static EdgeInsets leftRightXXXLarge() =>
      const EdgeInsets.symmetric(horizontal: xxxLarge);
  static EdgeInsets leftRightX4Large() =>
      const EdgeInsets.symmetric(horizontal: x4Large);

// Top and Left padding
  static EdgeInsets topLeftSmall() =>
      const EdgeInsets.only(top: small, left: small);
  static EdgeInsets topLeftMedium() =>
      const EdgeInsets.only(top: medium, left: medium);
  static EdgeInsets topLeftLarge() =>
      const EdgeInsets.only(top: large, left: large);
  static EdgeInsets topLeftExtraLarge() =>
      const EdgeInsets.only(top: xLarge, left: xLarge);
  static EdgeInsets topLeftXXLarge() =>
      const EdgeInsets.only(top: xxLarge, left: xxLarge);
  static EdgeInsets topLeftXXXLarge() =>
      const EdgeInsets.only(top: xxxLarge, left: xxxLarge);
  static EdgeInsets topLeftX4Large() =>
      const EdgeInsets.only(top: x4Large, left: x4Large);

// Top and Right padding
  static EdgeInsets topRightSmall() =>
      const EdgeInsets.only(top: small, right: small);
  static EdgeInsets topRightMedium() =>
      const EdgeInsets.only(top: medium, right: medium);
  static EdgeInsets topRightLarge() =>
      const EdgeInsets.only(top: large, right: large);
  static EdgeInsets topRightExtraLarge() =>
      const EdgeInsets.only(top: xLarge, right: xLarge);
  static EdgeInsets topRightXXLarge() =>
      const EdgeInsets.only(top: xxLarge, right: xxLarge);
  static EdgeInsets topRightXXXLarge() =>
      const EdgeInsets.only(top: xxxLarge, right: xxxLarge);
  static EdgeInsets topRightX4Large() =>
      const EdgeInsets.only(top: x4Large, right: x4Large);

// Bottom and Left padding
  static EdgeInsets bottomLeftSmall() =>
      const EdgeInsets.only(bottom: small, left: small);
  static EdgeInsets bottomLeftMedium() =>
      const EdgeInsets.only(bottom: medium, left: medium);
  static EdgeInsets bottomLeftLarge() =>
      const EdgeInsets.only(bottom: large, left: large);
  static EdgeInsets bottomLeftExtraLarge() =>
      const EdgeInsets.only(bottom: xLarge, left: xLarge);
  static EdgeInsets bottomLeftXXLarge() =>
      const EdgeInsets.only(bottom: xxLarge, left: xxLarge);
  static EdgeInsets bottomLeftXXXLarge() =>
      const EdgeInsets.only(bottom: xxxLarge, left: xxxLarge);
  static EdgeInsets bottomLeftX4Large() =>
      const EdgeInsets.only(bottom: x4Large, left: x4Large);

// Bottom and Right padding
  static EdgeInsets bottomRightSmall() =>
      const EdgeInsets.only(bottom: small, right: small);
  static EdgeInsets bottomRightMedium() =>
      const EdgeInsets.only(bottom: medium, right: medium);
  static EdgeInsets bottomRightLarge() =>
      const EdgeInsets.only(bottom: large, right: large);
  static EdgeInsets bottomRightExtraLarge() =>
      const EdgeInsets.only(bottom: xLarge, right: xLarge);
  static EdgeInsets bottomRightXXLarge() =>
      const EdgeInsets.only(bottom: xxLarge, right: xxLarge);
  static EdgeInsets bottomRightXXXLarge() =>
      const EdgeInsets.only(bottom: xxxLarge, right: xxxLarge);
  static EdgeInsets bottomRightX4Large() =>
      const EdgeInsets.only(bottom: x4Large, right: x4Large);

// All padding
  static EdgeInsets allSmall() => const EdgeInsets.all(small);
  static EdgeInsets allMedium() => const EdgeInsets.all(medium);
  static EdgeInsets allLarge() => const EdgeInsets.all(large);
  static EdgeInsets allExtraLarge() => const EdgeInsets.all(xLarge);
  static EdgeInsets allXXLarge() => const EdgeInsets.all(xxLarge);
  static EdgeInsets allXXXLarge() => const EdgeInsets.all(xxxLarge);
  static EdgeInsets allX4Large() => const EdgeInsets.all(x4Large);
}
