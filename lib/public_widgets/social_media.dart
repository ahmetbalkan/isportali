import 'package:isportal/public_widgets/buttons.dart';
import 'package:isportal/themes/constants/color_constants.dart';
import 'package:isportal/utils/context_extention.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialMedia extends StatelessWidget {
  const SocialMedia({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomCircleButton(
          color: AppColors.primary,
          size: context.heightSize20,
          onPressed: () {},
          icon: FontAwesomeIcons.instagram,
        ),
        CustomCircleButton(
          color: AppColors.primary,
          size: context.heightSize20,
          onPressed: () {},
          icon: FontAwesomeIcons.facebookF,
          
        ),
      
        CustomCircleButton(
          color: AppColors.primary,
          size: context.heightSize20,
          onPressed: () {},
          icon: FontAwesomeIcons.twitter,
        ),
        CustomCircleButton(
          color: AppColors.primary,
          size: context.heightSize20,
          onPressed: () {},
          icon: FontAwesomeIcons.linkedinIn,
        ),
      ],
    );
  }
}
