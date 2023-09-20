import 'package:isportal/public_widgets/seperator.dart';
import 'package:isportal/public_widgets/social_media.dart';
import 'package:isportal/themes/constants/color_constants.dart';
import 'package:isportal/themes/constants/textstyle_constants.dart';
import 'package:isportal/utils/context_extention.dart';
import 'package:isportal/utils/text_extention.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        const SeparatorWidget(color: AppColors.grey),
        SizedBox(
          height: context.screenHeight * 0.02,
        ),
        Row(
          children: [
            Expanded(
              child: Align(
                alignment: Alignment.centerLeft,
                child: SvgPicture.asset("images/svg/yenibirislogo.svg"),
              ),
            ),
            const Expanded(child: SocialMedia()),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton.icon(
                      onPressed: () {},
                      icon: SvgPicture.asset("images/svg/phone.svg"),
                      label: Text(
                        "0850 266 85 70",
                        style: AppTextSyles.redHatDisplay(
                            textColor: AppColors.black,
                            fontSize: context.screenWidth * 0.008),
                      )),
                  SizedBox(
                    width: context.screenHeight * 0.05,
                  ),
                  TextButton.icon(
                      onPressed: () {},
                      icon: SvgPicture.asset("images/svg/mail.svg"),
                      label: Text(
                        "0850 266 85 70",
                        style: AppTextSyles.redHatDisplay(
                            textColor: AppColors.black,
                            fontSize: context.screenWidth * 0.008),
                      )),
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: context.screenHeight * 0.02,
        ),
        const SeparatorWidget(color: AppColors.grey),
        SizedBox(
          height: context.screenHeight * 0.02,
        ),
        Row(
          children: [
            Expanded(
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "www.yenibiris.com",
                    style: AppTextSyles.RedHatDisplayExtraBold(
                        textColor: AppColors.black,
                        fontSize: context.screenWidth * 0.008),
                  )),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "Copyright © 2000 - 2023 Yenibiriş Dijital İnsan Kaynaklar",
                  style: AppTextSyles.redHatDisplay(
                      textColor: AppColors.grey,
                      fontSize: context.screenWidth * 0.008),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: context.screenHeight * 0.02,
        ),
        const SeparatorWidget(color: AppColors.grey),
      ],
    );
  }
}

class TabletFooterWidget extends StatelessWidget {
  const TabletFooterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        const SeparatorWidget(color: AppColors.grey),
        SizedBox(
          height: context.screenHeight * 0.02,
        ),
        Row(
          children: [
            Expanded(
              flex: 1,
              child: Align(
                alignment: Alignment.centerLeft,
                child: SvgPicture.asset("assets/images/svg/yenibirislogo.svg"),
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton.icon(
                      onPressed: () {},
                      icon: SvgPicture.asset("assets/images/svg/phone.svg"),
                      label: Text(
                        "0850 266 85 70",
                        style: Theme.of(context)
                            .textTheme
                            .paragraph1(context)
                            .copyWith(fontSize: 25),
                      )),
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton.icon(
                      onPressed: () {},
                      icon: SvgPicture.asset("assets/images/svg/mail.svg"),
                      label: Text(
                        "0850 266 85 70",
                        style: Theme.of(context)
                            .textTheme
                            .paragraph1(context)
                            .copyWith(fontSize: 25),
                      )),
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: context.screenHeight * 0.02,
        ),
        const SeparatorWidget(color: AppColors.grey),
        SizedBox(
          height: context.screenHeight * 0.02,
        ),
        Row(
          children: [
            Expanded(
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "Copyright © 2000 - 2023 Yenibiriş Dijital İnsan Kaynaklar",
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .paragraph1(context)
                      .copyWith(fontSize: context.screenWidth * .025),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: context.screenHeight * 0.02,
        ),
        const SeparatorWidget(color: AppColors.grey),
      ],
    );
  }
}
