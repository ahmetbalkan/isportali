import 'package:auto_route/auto_route.dart';
import 'package:isportal/navigation/router.dart';
import 'package:isportal/public_widgets/appbar/appbar.dart';
import 'package:isportal/public_widgets/buttons.dart';
import 'package:isportal/public_widgets/appbar/mobile_drawer.dart';
import 'package:isportal/public_widgets/footer/mobile_footer.dart';
import 'package:isportal/themes/constants/color_constants.dart';
import 'package:isportal/themes/constants/padding_constants.dart';
import 'package:isportal/utils/context_extention.dart';
import 'package:isportal/utils/text_extention.dart';
import 'package:flutter/material.dart';

class MobileHomePage extends StatelessWidget {
  const MobileHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    print(context.screenWidth);
    return SafeArea(
      child: Scaffold(
        drawer: const MobileDrawer(),
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(context.heightSize50),
            child: const MobileAppbarWidget()),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
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
              Padding(
                padding: AppPaddings.allMedium(),
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.secondary,
                    borderRadius: BorderRadius.circular(17),
                  ),
                  child: Column(children: [
                    SizedBox(
                      height: context.screenHeight * 0.025,
                    ),
                    Text(
                      "İş Arıyorum",
                      style: Theme.of(context)
                          .textTheme
                          .title5(context)
                          .copyWith(color: AppColors.white),
                    ),
                    SizedBox(
                      height: context.heightSize10,
                    ),
                    Text(
                      "Bilgilerinizi girin,işverenle paylaşalım!",
                      textAlign: TextAlign.center,
                      style: Theme.of(context)
                          .textTheme
                          .title1(context)
                          .copyWith(color: AppColors.white),
                    ),
                    SizedBox(
                      height: context.heightSize10,
                    ),
                    Padding(
                      padding: AppPaddings.leftRightMedium(),
                      child: const Divider(
                        color: AppColors.tertiary,
                        thickness: 0.5,
                      ),
                    ),
                    SizedBox(
                      height: context.heightSize40,
                      child: MobileRightIconTextButton(
                          onPressed: () {
                            context.router.replace(const MailLoginRoute());
                          },
                          buttonText: "yenibiris.com’da özgeçmişim var",
                          textColor: AppColors.tertiary,
                          screenWidth: context.screenWidth),
                    ),
                    Padding(
                      padding: AppPaddings.leftRightMedium(),
                      child: const Divider(
                        color: AppColors.tertiary,
                        thickness: 0.5,
                      ),
                    ),
                    SizedBox(
                      height: context.heightSize40,
                      child: MobileRightIconTextButton(
                          onPressed: () {
                            context.router.replace(const PhoneLoginRoute());
                          },
                          buttonText: "Özgeçmiş oluşturmak istiyorum",
                          textColor: AppColors.tertiary,
                          screenWidth: context.screenWidth),
                    ),
                    Padding(
                      padding: AppPaddings.leftRightLarge(),
                      child: const Divider(
                        color: AppColors.tertiary,
                        thickness: 0.5,
                      ),
                    ),
                    SizedBox(
                      height: context.heightSize40,
                      child: MobileRightIconTextButton(
                          onPressed: () {
                            context.router.replace(const JobListRoute());
                          },
                          buttonText: "14442 iş ilanı arasından iş ara",
                          textColor: AppColors.tertiary,
                          screenWidth: context.screenWidth),
                    ),
                    SizedBox(
                      height: context.heightSize10,
                    ),
                  ]),
                ),
              ),
              Padding(
                padding: AppPaddings.allMedium(),
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.circular(17),
                  ),
                  child: Column(children: [
                    SizedBox(
                      height: context.heightSize10,
                    ),
                    Text(
                      "İş Verenim",
                      style: Theme.of(context)
                          .textTheme
                          .title5(context)
                          .copyWith(color: AppColors.white),
                    ),
                    SizedBox(
                      height: context.heightSize10,
                    ),
                    Text(
                      "Bilgilerinizi girin, sizinle iletişime geçelim!",
                      textAlign: TextAlign.center,
                      style: Theme.of(context)
                          .textTheme
                          .title1(context)
                          .copyWith(color: AppColors.white),
                    ),
                    SizedBox(
                      height: context.screenHeight * 0.010,
                    ),
                    Padding(
                      padding: AppPaddings.leftRightMedium(),
                      child: const Divider(
                        color: AppColors.tertiary,
                        thickness: 0.5,
                      ),
                    ),
                    SizedBox(
                      height: context.heightSize40,
                      child: MobileRightIconTextButton(
                          onPressed: () {},
                          buttonText: "İşveren üyeliğim var",
                          textColor: AppColors.tertiary,
                          screenWidth: context.screenWidth),
                    ),
                    Padding(
                      padding: AppPaddings.leftRightLarge(),
                      child: const Divider(
                        color: AppColors.tertiary,
                        thickness: 0.5,
                      ),
                    ),
                    SizedBox(
                      height: context.heightSize40,
                      child: MobileRightIconTextButton(
                          onPressed: () {},
                          buttonText: "İşveren üyeliğim yok",
                          textColor: AppColors.tertiary,
                          screenWidth: context.screenWidth),
                    ),
                    SizedBox(
                      height: context.screenHeight * 0.020,
                    ),
                  ]),
                ),
              ),
              const MobileFooter()
            ],
          ),
        ),
      ),
    );
  }
}
