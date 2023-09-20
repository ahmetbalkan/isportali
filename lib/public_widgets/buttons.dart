import 'package:isportal/themes/constants/color_constants.dart';
import 'package:isportal/themes/constants/padding_constants.dart';
import 'package:isportal/themes/constants/textstyle_constants.dart';
import 'package:isportal/utils/colors_extention.dart';
import 'package:isportal/utils/context_extention.dart';
import 'package:isportal/utils/text_extention.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    this.color,
    required this.onPressed,
    required this.fontSize,
  });

  final String text;
  final Color? color;
  final double fontSize;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          backgroundColor: color?.toMaterialStateProperty() ??
              AppColors.primary.toMaterialStateProperty()),
      onPressed: onPressed,
      child: Text(
        text,
        style: AppTextSyles.RedHatDisplayExtraBold(fontSize: fontSize),
      ),
    );
  }
}

class CustomButton2 extends StatelessWidget {
  const CustomButton2({
    super.key,
    required this.text,
    this.color,
    required this.onPressed,
    required this.textStyle,
  });

  final String text;
  final Color? color;
  final TextStyle textStyle;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: double.infinity,
        height: context.heightSize50,
        decoration: BoxDecoration(
            color: color ?? AppColors.primary,
            borderRadius: const BorderRadius.all(Radius.circular(8))),
        child: Align(
          alignment: Alignment.center,
          child: Text(
            text,
            style: textStyle,
          ),
        ),
      ),
    );
  }
}

class MobileCustomButton extends StatelessWidget {
  const MobileCustomButton({
    super.key,
    required this.text,
    this.color,
    required this.onPressed,
    required this.textStyle,
  });

  final String text;
  final Color? color;
  final TextStyle textStyle;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: double.infinity,
        height: 60,
        decoration: BoxDecoration(
            color: color ?? AppColors.primary,
            borderRadius: const BorderRadius.all(Radius.circular(8))),
        child: Align(
          alignment: Alignment.center,
          child: Text(
            text,
            style: Theme.of(context)
                .textTheme
                .title1(context)
                .copyWith(color: AppColors.white),
          ),
        ),
      ),
    );
  }
}

class CustomOutlinedButton extends StatelessWidget {
  const CustomOutlinedButton({
    super.key,
    required this.text,
    this.color,
    required this.onPressed,
    required this.textStyle,
  });

  final String text;
  final TextStyle textStyle;
  final Color? color;

  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: double.infinity,
        height: context.heightSize50,
        decoration: BoxDecoration(
            border: Border.all(color: color ?? AppColors.primary),
            borderRadius: const BorderRadius.all(Radius.circular(8))),
        child: Align(
          alignment: Alignment.center,
          child: Text(
            text,
            style: textStyle,
          ),
        ),
      ),
    );
  }
}

class CustomCircleButton extends StatelessWidget {
  const CustomCircleButton({
    super.key,
    this.color,
    required this.onPressed,
    required this.icon,
    required this.size,
  });

  final Color? color;
  final IconData icon;
  final double size;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        style: ButtonStyle(
            shape: MaterialStateProperty.all(
              const CircleBorder(),
            ),
            side: MaterialStateProperty.all(BorderSide(
                color: color ?? AppColors.primary,
                width: 1.0,
                style: BorderStyle.solid))),
        onPressed: onPressed,
        child: Padding(
          padding: AppPaddings.allMedium(),
          child: Icon(
            icon,
            size: size,
            color: color,
          ),
        ));
  }
}

class RightIconTextButton extends StatelessWidget {
  const RightIconTextButton({
    super.key,
    required this.screenWidth,
    required this.buttonText,
    required this.textColor,
    required this.onPressed,
  });

  final double screenWidth;
  final String buttonText;
  final Color textColor;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Row(
        children: [
          const Spacer(),
          Expanded(
            flex: 9,
            child: Text(
              buttonText,
              textAlign: TextAlign.left,
              style: AppTextSyles.RedHatDisplayBold(
                  fontSize: screenWidth * 0.0085, textColor: textColor),
            ),
          ),
          Expanded(
            flex: 1,
            child: FaIcon(
              FontAwesomeIcons.angleRight,
              color: textColor,
            ),
          ),
        ],
      ),
    );
  }
}

class MobileRightIconTextButton extends StatelessWidget {
  const MobileRightIconTextButton({
    super.key,
    required this.screenWidth,
    required this.buttonText,
    required this.textColor,
    required this.onPressed,
  });

  final double screenWidth;
  final String buttonText;
  final Color textColor;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      child: Row(
        children: [
          const Spacer(),
          Expanded(
            flex: 9,
            child: Text(
              buttonText,
              textAlign: TextAlign.left,
              style: Theme.of(context)
                  .textTheme
                  .title1(context)
                  .copyWith(color: textColor),
            ),
          ),
          Expanded(
            flex: 1,
            child: FaIcon(
              FontAwesomeIcons.angleRight,
              color: textColor,
            ),
          ),
        ],
      ),
    );
  }
}

class TabletRightIconTextButton extends StatelessWidget {
  const TabletRightIconTextButton({
    super.key,
    required this.screenWidth,
    required this.buttonText,
    required this.textColor,
    required this.onPressed,
  });

  final double screenWidth;
  final String buttonText;
  final Color textColor;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Row(
        children: [
          const Spacer(),
          Expanded(
            flex: 9,
            child: Text(
              buttonText,
              textAlign: TextAlign.left,
              style: Theme.of(context)
                  .textTheme
                  .title1(context)
                  .copyWith(color: textColor),
            ),
          ),
          Expanded(
            flex: 1,
            child: FaIcon(
              FontAwesomeIcons.angleRight,
              color: textColor,
            ),
          ),
        ],
      ),
    );
  }
}
