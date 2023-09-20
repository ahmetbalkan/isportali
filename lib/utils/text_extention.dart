import 'package:isportal/utils/context_extention.dart';
import 'package:flutter/material.dart';

extension CustomStyles on TextTheme {
  TextStyle title1(BuildContext context) => TextStyle(
      fontStyle: FontStyle.normal,
      fontFamily: 'RedHatDisplay-ExtraBold',
      fontSize:
          context.screenWidth > 1200 ? context.title1 : context.mobileTitle1);
  TextStyle title2(BuildContext context) => TextStyle(
      fontStyle: FontStyle.normal,
      fontFamily: 'RedHatDisplay-ExtraBold',
      fontSize:
          context.screenWidth > 1200 ? context.title2 : context.mobileTitle2);
  TextStyle title3(BuildContext context) => TextStyle(
      fontStyle: FontStyle.normal,
      fontFamily: 'RedHatDisplay-ExtraBold',
      fontSize:
          context.screenWidth > 1200 ? context.title3 : context.mobileTitle3);
  TextStyle title4(BuildContext context) => TextStyle(
      fontStyle: FontStyle.normal,
      fontFamily: 'RedHatDisplay-ExtraBold',
      fontSize:
          context.screenWidth > 1200 ? context.title4 : context.mobileTitle4);
  TextStyle title5(BuildContext context) => TextStyle(
      fontStyle: FontStyle.normal,
      fontFamily: 'RedHatDisplay-ExtraBold',
      fontSize:
          context.screenWidth > 1200 ? context.title5 : context.mobileTitle5);

  TextStyle titlebig1(BuildContext context) => TextStyle(
      fontFamily: 'RedHatDisplay-ExtraBold',
      fontStyle: FontStyle.normal,
      fontSize: context.screenWidth > 1200
          ? context.titlebig2
          : context.mobileTitlebig2);
  TextStyle titlebig2(BuildContext context) => TextStyle(
      fontFamily: 'RedHatDisplay-ExtraBold',
      fontStyle: FontStyle.normal,
      fontSize: context.screenWidth > 1200
          ? context.titlebig2
          : context.mobileTitlebig2);
  TextStyle titlebig3(BuildContext context) => TextStyle(
      fontFamily: 'RedHatDisplay-ExtraBold',
      fontStyle: FontStyle.normal,
      fontSize: context.screenWidth > 1200
          ? context.titlebig3
          : context.mobileTitlebig3);
  TextStyle titlebig4(BuildContext context) => TextStyle(
      fontFamily: 'RedHatDisplay-ExtraBold',
      fontStyle: FontStyle.normal,
      fontSize: context.screenWidth > 1200
          ? context.titlebig4
          : context.mobileTitlebig4);
  TextStyle titlebig5(BuildContext context) => TextStyle(
      fontFamily: 'RedHatDisplay-ExtraBold',
      fontStyle: FontStyle.normal,
      fontSize: context.screenWidth > 1200
          ? context.titlebig5
          : context.mobileTitlebig5);

  TextStyle paragraph1(BuildContext context) => TextStyle(
      fontFamily: 'RedHatDisplay',
      fontStyle: FontStyle.normal,
      fontSize: context.screenWidth > 1200
          ? context.paragraph1
          : context.mobileParagraph1);
  TextStyle paragraph2(BuildContext context) => TextStyle(
      fontFamily: 'RedHatDisplay',
      fontStyle: FontStyle.normal,
      fontSize: context.screenWidth > 1200
          ? context.paragraph2
          : context.mobileParagraph2);
  TextStyle paragraph3(BuildContext context) => TextStyle(
      fontFamily: 'RedHatDisplay',
      fontStyle: FontStyle.normal,
      fontSize: context.screenWidth > 1200
          ? context.paragraph3
          : context.mobileParagraph3);
  TextStyle paragraph4(BuildContext context) => TextStyle(
      fontFamily: 'RedHatDisplay',
      fontStyle: FontStyle.normal,
      fontSize: context.screenWidth > 1200
          ? context.paragraph4
          : context.mobileParagraph4);
  TextStyle paragraph5(BuildContext context) => TextStyle(
      fontFamily: 'RedHatDisplay',
      fontStyle: FontStyle.normal,
      fontSize: context.screenWidth > 1200
          ? context.paragraph5
          : context.mobileParagraph5);
}
