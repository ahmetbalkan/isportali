import 'package:flutter/material.dart';

extension ContextExtention on BuildContext {
  double get screenWidth => MediaQuery.of(this).size.width;
  double get screenHeight => MediaQuery.of(this).size.height;

  double get title1 => screenWidth * 0.0075; //14
  double get title2 => screenWidth * 0.0085; //16
  double get title3 => screenWidth * 0.0095; //18
  double get title4 => screenWidth * 0.0105; //20
  double get title5 => screenWidth * 0.0115; //22

  double get titlebig1 => screenWidth * 0.0125; //24
  double get titlebig2 => screenWidth * 0.015; //28
  double get titlebig3 => screenWidth * 0.016; //30
  double get titlebig4 => screenWidth * 0.017; //32
  double get titlebig5 => screenWidth * 0.018; //34

  double get paragraph1 => screenWidth * 0.0075; //14
  double get paragraph2 => screenWidth * 0.0085; //16
  double get paragraph3 => screenWidth * 0.010; //18
  double get paragraph4 => screenWidth * 0.0125; //20
  double get paragraph5 => screenWidth * 0.015; //22

  double get heightSize05 => screenHeight * 0.00625;
  double get heightSize10 => screenHeight * 0.0125;
  double get heightSize20 => screenHeight * 0.0250;
  double get heightSize30 => screenHeight * 0.0375;
  double get heightSize40 => screenHeight * 0.05;
  double get heightSize50 => screenHeight * 0.0625;
  double get heightSize60 => screenHeight * 0.0750;
  double get heightSize70 => screenHeight * 0.0875;
  double get heightSize80 => screenHeight * 0.1;
  double get heightSize90 => screenHeight * 0.1125;
  double get heightSize100 => screenHeight * 0.125;
  double get heightSize120 => screenHeight * 0.156;
  double get heightSize150 => screenHeight * 0.1875;
  double get heightSize200 => screenHeight * 0.250;

  double get witdhSize05 => screenWidth * 0.00625;
  double get witdhSize10 => screenWidth * 0.0125;
  double get witdhSize20 => screenWidth * 0.0250;
  double get witdhSize30 => screenWidth * 0.0375;
  double get witdhSize40 => screenWidth * 0.05;
  double get witdhSize50 => screenWidth * 0.0625;
  double get witdhSize60 => screenWidth * 0.0750;
  double get witdhSize70 => screenWidth * 0.0875;
  double get witdhSize80 => screenWidth * 0.1;
  double get witdhSize90 => screenWidth * 0.1125;
  double get witdhSize100 => screenWidth * 0.125;
  double get witdhSize120 => screenWidth * 0.156;
  double get witdhSize150 => screenWidth * 0.1875;
  double get witdhSize200 => screenWidth * 0.250;

  double get mobileTitle1 => screenWidth * 0.0075 * 5;
  double get mobileTitle2 => screenWidth * 0.0085 * 5;
  double get mobileTitle3 => screenWidth * 0.0095 * 5;
  double get mobileTitle4 => screenWidth * 0.0105 * 5;
  double get mobileTitle5 => screenWidth * 0.0115 * 5;

  double get mobileTitlebig1 => screenWidth * 0.0125 * 5;
  double get mobileTitlebig2 => screenWidth * 0.015 * 5;
  double get mobileTitlebig3 => screenWidth * 0.016 * 5;
  double get mobileTitlebig4 => screenWidth * 0.017 * 5;
  double get mobileTitlebig5 => screenWidth * 0.018 * 5;

  double get mobileParagraph1 => screenWidth * 0.0075 * 5;
  double get mobileParagraph2 => screenWidth * 0.0085 * 5;
  double get mobileParagraph3 => screenWidth * 0.010 * 5;
  double get mobileParagraph4 => screenWidth * 0.0125 * 5;
  double get mobileParagraph5 => screenWidth * 0.015 * 5;

  double get mobileWidthSize05 => screenWidth * 0.00625 * 5;
  double get mobileWidthSize10 => screenWidth * 0.0125 * 5;
  double get mobileWidthSize20 => screenWidth * 0.0250 * 5;
  double get mobileWidthSize30 => screenWidth * 0.0375 * 5;
  double get mobileWidthSize40 => screenWidth * 0.05 * 5;
  double get mobileWidthSize50 => screenWidth * 0.0625 * 5;
  double get mobileWidthSize60 => screenWidth * 0.0750 * 5;
  double get mobileWidthSize70 => screenWidth * 0.0875 * 5;
  double get mobileWidthSize80 => screenWidth * 0.1 * 5;
  double get mobileWidthSize90 => screenWidth * 0.1125 * 5;
  double get mobileWidthSize100 => screenWidth * 0.125 * 5;
  double get mobileWidthSize120 => screenWidth * 0.156 * 5;
  double get mobileWidthSize150 => screenWidth * 0.1875 * 5;
  double get mobileWidthSize200 => screenWidth * 0.250 * 5;

  double get mobileHeightSize05 => screenHeight * 0.00625 * 5;
  double get mobileHeightSize10 => screenHeight * 0.0125 * 5;
  double get mobileHeightSize20 => screenHeight * 0.0250 * 5;
  double get mobileHeightSize30 => screenHeight * 0.0375 * 5;
  double get mobileHeightSize40 => screenHeight * 0.05 * 5;
  double get mobileHeightSize50 => screenHeight * 0.0625 * 5;
  double get mobileHeightSize60 => screenHeight * 0.0750 * 5;
  double get mobileHeightSize70 => screenHeight * 0.0875 * 5;
  double get mobileHeightSize80 => screenHeight * 0.1 * 5;
  double get mobileHeightSize90 => screenHeight * 0.1125 * 5;
  double get mobileHeightSize100 => screenHeight * 0.125 * 5;
  double get mobileHeightSize120 => screenHeight * 0.156 * 5;
  double get mobileHeightSize150 => screenHeight * 0.1875 * 5;
  double get mobileHeightSize200 => screenHeight * 0.250 * 5;

  void debugPrint<T>(String message, T data) {
    assert(() {
      print('[DEBUG]: $message: ${data.toString()}');
      return true;
    }());
  }
}
