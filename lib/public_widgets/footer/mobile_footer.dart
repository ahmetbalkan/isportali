import 'package:isportal/public_widgets/seperator.dart';
import 'package:isportal/public_widgets/social_media.dart';
import 'package:isportal/themes/constants/color_constants.dart';
import 'package:isportal/utils/context_extention.dart';
import 'package:isportal/utils/text_extention.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MobileFooter extends StatelessWidget {
  const MobileFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: context.heightSize20,
        ),
        const SeparatorWidget(color: AppColors.grey),
        SizedBox(
          height: context.heightSize20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: context.witdhSize20,
            ),
            TextButton.icon(
              onPressed: () {},
              icon: const Icon(
                FontAwesomeIcons.phone,
                color: AppColors.primary,
              ),
              label: Text(
                "0850 266 85 70",
                style: Theme.of(context)
                    .textTheme
                    .paragraph2(context)
                    .copyWith(color: AppColors.primary),
              ),
            ),
            SizedBox(
              height: context.heightSize20,
            ),
            TextButton.icon(
                onPressed: () {},
                icon: const Icon(
                  FontAwesomeIcons.envelope,
                  color: AppColors.primary,
                ),
                label: Text(
                  "0850 266 85 70",
                  style: Theme.of(context)
                      .textTheme
                      .paragraph2(context)
                      .copyWith(color: AppColors.primary),
                ))
          ],
        ),
        SizedBox(
          height: context.heightSize20,
        ),
        const SocialMedia(),
        SizedBox(
          height: context.heightSize20,
        ),
        const SeparatorWidget(color: AppColors.grey),
        SizedBox(
          height: context.heightSize20,
        ),
        Text(
          "Copyright © 2000 - 2023 Yenibiriş Dijital İnsan Kaynaklar",
          style: Theme.of(context)
              .textTheme
              .paragraph1(context)
              .copyWith(color: AppColors.primary),
        ),
        SizedBox(
          height: context.heightSize20,
        ),
        const SeparatorWidget(color: AppColors.grey),
        SizedBox(
          height: context.heightSize10,
        ),
      ],
    );
  }
}
