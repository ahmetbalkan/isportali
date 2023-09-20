import 'package:auto_route/auto_route.dart';

import 'package:isportal/navigation/router.dart';
import 'package:isportal/public_widgets/appbar/appbar.dart';
import 'package:isportal/public_widgets/buttons.dart';
import 'package:isportal/public_widgets/footer/footer.dart';
import 'package:isportal/themes/constants/color_constants.dart';
import 'package:isportal/themes/constants/images_constants.dart';
import 'package:isportal/themes/constants/padding_constants.dart';
import 'package:isportal/themes/constants/textstyle_constants.dart';
import 'package:isportal/utils/context_extention.dart';
import 'package:isportal/utils/text_extention.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WebHomePage extends StatelessWidget {
  const WebHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Widget> svgWidgets = [
      Image.asset('images/png/thy.png'),
      Image.asset('images/png/medipol.png'),
      Image.asset('images/png/turkcell.png'),
      Image.asset('images/png/mercedes.png'),
      Image.asset('images/png/radisson.png'),
      Image.asset('images/png/lufthansa.png'),
      Image.asset('images/png/englishhome.png'),
      Image.asset('images/png/swis.png'),
    ];

    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(context.screenHeight * .08),
            child: const AppBarWidget()),
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                color: AppColors.softGrey,
                width: context.screenWidth,
                height: context.screenHeight * 0.6,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Spacer(),
                    Expanded(
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: Image.asset(
                          ImageConstants.instance.homepage_slide,
                          width: context.screenWidth,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: context.screenWidth * 0.8,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: context.screenHeight * 0.1,
                      ),
                      Text(
                        "Yarınlara umutla bakacağım",
                        style: AppTextSyles.RedHatDisplayExtraBold(
                            fontWeight: FontWeight.normal,
                            fontSize: context.screenWidth * .025),
                      ),
                      Text(
                        "bir işim olsun!",
                        style: AppTextSyles.RedHatDisplayExtraBold(
                            fontWeight: FontWeight.normal,
                            fontSize: context.screenWidth * .040),
                      ),
                      SizedBox(
                        height: context.screenHeight * 0.02,
                      ),
                      Text(
                        "Afette işini kaybetmiş tüm vatandaşlarımız için işverenlerle birlik olduk.\nHedefimiz 1 milyon kişiye iş imkânı sağlamak!",
                        style: AppTextSyles.RedHatDisplayBold(
                            fontWeight: FontWeight.bold,
                            fontSize: context.screenWidth * 0.012),
                      ),
                      SizedBox(
                        height: context.screenHeight * 0.02,
                      ),
                      Text(
                        "Sen de CV'ni yükleyerek gelecek işini bulabilirsin\nya da firmalardaki açık pozisyonları görüntüleyebilirsin.",
                        style: AppTextSyles.RedHatDisplayBold(
                            fontWeight: FontWeight.normal,
                            fontSize: context.screenWidth * 0.012),
                      ),
                      SizedBox(
                        height: context.screenHeight * 0.05,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: AppColors.secondary,
                              borderRadius: BorderRadius.circular(17),
                            ),
                            width: context.screenWidth * 0.17,
                            child: Column(children: [
                              SizedBox(
                                height: context.screenHeight * 0.025,
                              ),
                              Text(
                                "İş Arıyorum",
                                style: AppTextSyles.RedHatDisplayBold(
                                    fontSize: context.screenWidth * 0.02,
                                    fontWeight: FontWeight.bold,
                                    textColor: AppColors.white),
                              ),
                              SizedBox(
                                height: context.screenHeight * 0.010,
                              ),
                              Text(
                                "Bilgilerinizi girin,\nişverenle paylaşalım!",
                                textAlign: TextAlign.center,
                                style: AppTextSyles.RedHatDisplayBold(
                                    fontSize: context.screenWidth * 0.010,
                                    textColor: AppColors.white),
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
                                height: context.screenHeight * 0.050,
                                child: RightIconTextButton(
                                    onPressed: () {
                                      context.router
                                          .replace(const MailLoginRoute());
                                    },
                                    buttonText:
                                        "yenibiris.com’da özgeçmişim var",
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
                                height: context.screenHeight * 0.050,
                                child: RightIconTextButton(
                                    onPressed: () {
                                      context.router
                                          .replace(const PhoneLoginRoute());
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
                                height: context.screenHeight * 0.050,
                                child: RightIconTextButton(
                                    onPressed: () {
                                      context.router
                                          .replace(const JobListRoute());
                                    },
                                    buttonText:
                                        "14442 iş ilanı arasından iş ara",
                                    textColor: AppColors.tertiary,
                                    screenWidth: context.screenWidth),
                              ),
                              SizedBox(
                                height: context.screenHeight * 0.020,
                              ),
                            ]),
                          ),
                          SizedBox(
                            width: context.screenWidth * 0.02,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: AppColors.primary,
                              borderRadius: BorderRadius.circular(17),
                            ),
                            width: context.screenWidth * 0.17,
                            child: Column(children: [
                              SizedBox(
                                height: context.screenHeight * 0.025,
                              ),
                              Text(
                                "İş Verenim",
                                style: AppTextSyles.RedHatDisplayBold(
                                    fontSize: context.screenWidth * 0.02,
                                    fontWeight: FontWeight.bold,
                                    textColor: AppColors.white),
                              ),
                              SizedBox(
                                height: context.screenHeight * 0.010,
                              ),
                              Text(
                                "Bilgilerinizi girin, sizinle \niletişime geçelim!",
                                textAlign: TextAlign.center,
                                style: AppTextSyles.RedHatDisplayBold(
                                    fontSize: context.screenWidth * 0.010,
                                    textColor: AppColors.white),
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
                                height: context.screenHeight * 0.050,
                                child: RightIconTextButton(
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
                                height: context.screenHeight * 0.050,
                                child: RightIconTextButton(
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
                        ],
                      ),
                      SizedBox(
                        height: context.screenHeight * 0.05,
                      ),
                      Row(
                        children: [
                          Expanded(
                              child: Container(
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 20,
                                ),
                                SvgPicture.asset(
                                  "images/svg/is_ilani.svg",
                                  height: context.screenHeight * .12,
                                ),
                                SizedBox(
                                  height: context.screenHeight * .02,
                                ),
                                Text(
                                  "14444",
                                  style: AppTextSyles.RedHatDisplayExtraBold(
                                      fontSize: context.screenWidth * .025,
                                      fontWeight: FontWeight.w800),
                                ),
                                Text(
                                  "İş İlanı",
                                  style: AppTextSyles.RedHatDisplayBold(
                                      fontWeight: FontWeight.normal,
                                      fontSize: context.screenWidth * .015),
                                ),
                              ],
                            ),
                          )),
                          Expanded(
                              child: Container(
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 20,
                                ),
                                SvgPicture.asset(
                                  "images/svg/isveren.svg",
                                  height: context.screenHeight * .12,
                                ),
                                SizedBox(
                                  height: context.screenHeight * .02,
                                ),
                                Text(
                                  "14444",
                                  style: AppTextSyles.RedHatDisplayExtraBold(
                                      fontSize: context.screenWidth * .025,
                                      fontWeight: FontWeight.w800),
                                ),
                                Text(
                                  "İşveren",
                                  style: AppTextSyles.RedHatDisplayBold(
                                      fontWeight: FontWeight.normal,
                                      fontSize: context.screenWidth * .015),
                                ),
                              ],
                            ),
                          )),
                          Expanded(
                              child: Container(
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 20,
                                ),
                                SvgPicture.asset(
                                  "images/svg/ozgecmis.svg",
                                  height: context.screenHeight * .12,
                                ),
                                SizedBox(
                                  height: context.screenHeight * .02,
                                ),
                                Text(
                                  "14444",
                                  style: AppTextSyles.RedHatDisplayExtraBold(
                                      fontSize: context.screenWidth * .025,
                                      fontWeight: FontWeight.w800),
                                ),
                                Text(
                                  "Özgeçmiş",
                                  style: AppTextSyles.RedHatDisplayBold(
                                      fontWeight: FontWeight.normal,
                                      fontSize: context.screenWidth * .015),
                                ),
                              ],
                            ),
                          )),
                          Expanded(
                              child: Container(
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 20,
                                ),
                                SvgPicture.asset(
                                  "images/svg/istihdam.svg",
                                  height: context.screenHeight * .12,
                                ),
                                SizedBox(
                                  height: context.screenHeight * .02,
                                ),
                                Text(
                                  "14444",
                                  style: AppTextSyles.RedHatDisplayExtraBold(
                                      fontSize: context.screenWidth * .025,
                                      fontWeight: FontWeight.w800),
                                ),
                                Text(
                                  "İstihdam",
                                  style: AppTextSyles.RedHatDisplayBold(
                                      fontWeight: FontWeight.normal,
                                      fontSize: context.screenWidth * .015),
                                ),
                              ],
                            ),
                          )),
                        ],
                      ),
                      SizedBox(
                        height: context.screenHeight * 0.05,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Partner Markalarımız",
                            textAlign: TextAlign.center,
                            style: AppTextSyles.RedHatDisplayExtraBold(
                                fontSize: context.screenWidth * .020,
                                fontWeight: FontWeight.w800),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: context.screenHeight * 0.05,
                      ),
                      SizedBox(
                          width: context.screenWidth * 0.80,
                          child: GridView.builder(
                            shrinkWrap: true,
                            itemCount: svgWidgets.length,
                            padding: const EdgeInsets.all(4),
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 4,
                              childAspectRatio: 285 / 90,
                              mainAxisSpacing: 20,
                              crossAxisSpacing: 4,
                            ),
                            itemBuilder: (BuildContext context, int index) {
                              return Card(
                                elevation: 0,
                                margin: const EdgeInsets.all(4),
                                child: Container(
                                  width: 285,
                                  height: 90,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(
                                        color: AppColors.grey, width: 0.5),
                                  ),
                                  child: svgWidgets[index],
                                ),
                              );
                            },
                          )),
                      SizedBox(
                        height: context.screenHeight * 0.05,
                      ),
                      SizedBox(
                          width: context.screenWidth * 0.8,
                          height: context.screenHeight * .35,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                flex: 4,
                                child: Stack(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(17),
                                      child: Image.asset(
                                        "images/png/isariyorumcalltoaction.png",
                                        width: double.infinity,
                                        height: double.infinity,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Container(
                                      width: double.infinity,
                                      height: double.infinity,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(17),
                                        color: Colors.black.withOpacity(0.5),
                                      ),
                                    ),
                                    Padding(
                                      padding: AppPaddings.allExtraLarge(),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Expanded(
                                            flex: 4,
                                            child: Text(
                                              "İş Arıyorum",
                                              style: AppTextSyles
                                                  .RedHatDisplayExtraBold(
                                                      fontSize:
                                                          context.screenWidth *
                                                              .020,
                                                      textColor:
                                                          AppColors.white),
                                            ),
                                          ),
                                          Expanded(
                                            flex: 4,
                                            child: Text(
                                              "Bilgilerinizi girin, işverenle paylaşalım",
                                              style: AppTextSyles
                                                  .RedHatDisplayExtraBold(
                                                      fontSize:
                                                          context.screenWidth *
                                                              .012,
                                                      textColor:
                                                          AppColors.white),
                                            ),
                                          ),
                                          Expanded(
                                            flex: 3,
                                            child: SizedBox(
                                                height: context.screenHeight *
                                                    0.050,
                                                width:
                                                    context.screenWidth * .18,
                                                child: CustomOutlinedButton(
                                                  onPressed: () {
                                                    context.router
                                                        .pushAndPopUntil(
                                                      const PhoneLoginRoute(), // Yönlendirilmek istenen sayfa.
                                                      predicate: (route) =>
                                                          false, // Tüm route stack'ini temizler.
                                                    );
                                                  },
                                                  text:
                                                      "yenibiris.com’da özgeçmişim var",
                                                  textStyle: Theme.of(context)
                                                      .textTheme
                                                      .title3(context),
                                                  color: AppColors.white,
                                                )),
                                          ),
                                          const Spacer(),
                                          Expanded(
                                            flex: 3,
                                            child: SizedBox(
                                                height: context.screenHeight *
                                                    0.050,
                                                width:
                                                    context.screenWidth * .18,
                                                child: CustomButton(
                                                  fontSize:
                                                      context.screenWidth *
                                                          .008,
                                                  text:
                                                      "Özgeçmiş oluşturmak istiyorum",
                                                  onPressed: () {
                                                    context.router
                                                        .pushAndPopUntil(
                                                      const MailLoginRoute(), // Yönlendirilmek istenen sayfa.
                                                      predicate: (route) =>
                                                          false, // Tüm route stack'ini temizler.
                                                    );
                                                  },
                                                  color: AppColors.primary,
                                                )),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: context.screenHeight * 0.02,
                              ),
                              Expanded(
                                flex: 4,
                                child: Stack(
                                  alignment: Alignment.topRight,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(17),
                                      child: Image.asset(
                                        "images/png/isverenimcalltoaction.png",
                                        width: double.infinity,
                                        height: double.infinity,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Container(
                                      width: double.infinity,
                                      height: double.infinity,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(17),
                                        color: Colors.black.withOpacity(0.5),
                                      ),
                                    ),
                                    Padding(
                                      padding: AppPaddings.allExtraLarge(),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Expanded(
                                            flex: 4,
                                            child: Text(
                                              "İş Verenim",
                                              style: AppTextSyles
                                                  .RedHatDisplayExtraBold(
                                                      fontSize:
                                                          context.screenWidth *
                                                              .020,
                                                      textColor:
                                                          AppColors.white),
                                            ),
                                          ),
                                          Expanded(
                                            flex: 4,
                                            child: Text(
                                              "Bilgilerinizi girin, sizinle iletişime geçelim!",
                                              style: AppTextSyles
                                                  .RedHatDisplayExtraBold(
                                                      fontSize:
                                                          context.screenWidth *
                                                              .012,
                                                      textColor:
                                                          AppColors.white),
                                            ),
                                          ),
                                          Expanded(
                                            flex: 3,
                                            child: SizedBox(
                                                height: context.screenHeight *
                                                    0.050,
                                                width:
                                                    context.screenWidth * .18,
                                                child: CustomOutlinedButton(
                                                  onPressed: () {},
                                                  text: "İşveren üyeliğim var",
                                                  textStyle: Theme.of(context)
                                                      .textTheme
                                                      .title3(context),
                                                  color: AppColors.white,
                                                )),
                                          ),
                                          const Spacer(),
                                          Expanded(
                                            flex: 3,
                                            child: SizedBox(
                                                height: context.screenHeight *
                                                    0.050,
                                                width:
                                                    context.screenWidth * .18,
                                                child: CustomButton(
                                                  fontSize:
                                                      context.screenWidth *
                                                          .008,
                                                  text: "İşveren üyeliğim yok",
                                                  onPressed: () {},
                                                  color: AppColors.primary,
                                                )),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )),
                      SizedBox(
                        height: context.screenHeight * 0.05,
                      ),
                      SizedBox(
                        height: context.screenWidth * .10,
                        child: const FooterWidget(),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
