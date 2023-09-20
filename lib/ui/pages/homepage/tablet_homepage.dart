import 'package:auto_route/auto_route.dart';
import 'package:isportal/navigation/router.dart';
import 'package:isportal/public_widgets/buttons.dart';
import 'package:isportal/themes/constants/color_constants.dart';
import 'package:isportal/themes/constants/decoration_constant.dart';
import 'package:isportal/themes/constants/padding_constants.dart';
import 'package:isportal/utils/context_extention.dart';
import 'package:isportal/utils/text_extention.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TabletHomePage extends StatelessWidget {
  const TabletHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        title: SvgPicture.asset(
          "assets/images/svg/logo.svg",
          height: 60,
        ),
        actions: [
          Padding(
            padding: AppPaddings.rightLarge(),
            child: const Icon(
              FontAwesomeIcons.bars,
              size: 40,
              color: AppColors.primary,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                Align(
                  alignment: Alignment.bottomRight,
                  child: Image.asset(
                    "assets/images/png/homepage_slide.png",
                    width: context.screenWidth,
                    fit: BoxFit.fitWidth,
                    opacity: const AlwaysStoppedAnimation(.4),
                  ),
                ),
                Column(
                  children: [
                    SizedBox(
                      height: context.heightSize10,
                    ),
                    Text(
                      "Yarınlara umutla bakacağım",
                      style: Theme.of(context).textTheme.title5(context),
                    ),
                    Text(
                      "bir işim olsun!",
                      style: Theme.of(context).textTheme.title5(context),
                    ),
                    SizedBox(
                      height: context.heightSize10,
                    ),
                    Text(
                        "Afette işini kaybetmiş tüm vatandaşlarımız için işverenlerle birlik olduk.\nHedefimiz 1 milyon kişiye iş imkânı sağlamak!",
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.title1(context)),
                    SizedBox(
                      height: context.heightSize10,
                    ),
                    Text(
                        "Sen de CV'ni yükleyerek gelecek işini bulabilirsin\nya da firmalardaki açık pozisyonları görüntüleyebilirsin.",
                        style: Theme.of(context).textTheme.paragraph1(context)),
                  ],
                ),
              ],
            ),
            Padding(
              padding: AppPaddings.allMedium(),
              child:
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Expanded(
                  child: SizedBox(
                    child: Container(
                      decoration: DecorationConstants.greyBorderContainer,
                      child: Column(children: [
                        Text("İş Arıyorum",
                            style: Theme.of(context).textTheme.title5(context)),
                        SizedBox(
                          height: context.heightSize05,
                        ),
                        Text(
                          "Bilgilerinizi girin,işverenle paylaşalım!",
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.title1(context),
                        ),
                        SizedBox(
                          height: context.heightSize10,
                        ),
                        TabletRightIconTextButton(
                            onPressed: () {
                              context.router.replace(const MailLoginRoute());
                            },
                            buttonText: "yenibiris.com’da özgeçmişim var",
                            textColor: AppColors.primary,
                            screenWidth: context.screenWidth),
                        SizedBox(
                          height: context.heightSize10,
                        ),
                        TabletRightIconTextButton(
                            onPressed: () {
                              context.router.replace(const MailLoginRoute());
                            },
                            buttonText: "Özgeçmiş oluşturmak istiyorum",
                            textColor: AppColors.primary,
                            screenWidth: context.screenWidth),
                        SizedBox(
                          height: context.heightSize10,
                        ),
                        TabletRightIconTextButton(
                            onPressed: () {
                              context.router.replace(const MailLoginRoute());
                            },
                            buttonText: "14442 iş ilanı arasından iş ara",
                            textColor: AppColors.primary,
                            screenWidth: context.screenWidth),
                      ]),
                    ),
                  ),
                ),
                const VerticalDivider(
                  thickness: 2,
                  color: AppColors.grey,
                ),
                Expanded(
                  child: Container(
                    decoration: DecorationConstants.greyBorderContainer,
                    child: Column(children: [
                      SizedBox(
                        height: context.heightSize05,
                      ),
                      Text("İş Verenim",
                          style: Theme.of(context).textTheme.title5(context)),
                      SizedBox(
                        height: context.heightSize05,
                      ),
                      Text(
                        "Bilgilerinizi girin, sizinle iletişime geçelim!",
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.title1(context),
                      ),
                      SizedBox(
                        height: context.heightSize10,
                      ),
                      TabletRightIconTextButton(
                          onPressed: () {
                            context.router.replace(const MailLoginRoute());
                          },
                          buttonText: "İşveren üyeliğim var",
                          textColor: AppColors.primary,
                          screenWidth: context.screenWidth),
                      SizedBox(
                        height: context.heightSize10,
                      ),
                      TabletRightIconTextButton(
                          onPressed: () {
                            context.router.replace(const MailLoginRoute());
                          },
                          buttonText: "İşveren üyeliğim yok",
                          textColor: AppColors.primary,
                          screenWidth: context.screenWidth),
                      SizedBox(
                        height: context.heightSize30,
                      ),
                    ]),
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
