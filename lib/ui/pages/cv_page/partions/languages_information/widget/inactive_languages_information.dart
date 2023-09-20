import 'package:isportal/blocs/cv_page_cubit/cv_page_cubit.dart';
import 'package:isportal/blocs/cv_page_cubit/cv_page_state.dart';
import 'package:isportal/themes/constants/color_constants.dart';
import 'package:isportal/themes/constants/decoration_constant.dart';
import 'package:isportal/themes/constants/padding_constants.dart';
import 'package:isportal/utils/context_extention.dart';
import 'package:isportal/utils/text_extention.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InActiveLanguagesInformationWidget extends StatelessWidget {
  const InActiveLanguagesInformationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.maxFinite,
        decoration: DecorationConstants.greyBorderContainer,
        padding: AppPaddings.allLarge(),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Yabancı Diller",
                  style: Theme.of(context).textTheme.titlebig1(context),
                ),
                Container(
                  decoration: DecorationConstants.greyBorderContainer,
                  child: Padding(
                      padding: AppPaddings.allSmall(),
                      child: const FaIcon(
                        FontAwesomeIcons.plus,
                        color: AppColors.primary,
                      )),
                ),
              ],
            ),
            SizedBox(
              height: context.heightSize20,
            ),
            BlocBuilder<CvPageCubit, CvPageState>(
              builder: (context, state) {
                return ListView.separated(
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: context.heightSize10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    state
                                            .mainCvModel
                                            .cvModel!
                                            .foreignLanguageList?[index]
                                            .language
                                            ?.name ??
                                        "",
                                    style: Theme.of(context)
                                        .textTheme
                                        .title5(context),
                                  ),
                                  Align(
                                    alignment: Alignment.topCenter,
                                    child: Container(
                                      decoration: DecorationConstants
                                          .greyBorderContainer,
                                      child: Padding(
                                        padding: AppPaddings.allSmall(),
                                        child: SvgPicture.asset(
                                          "images/svg/edit.svg",
                                          height: context.heightSize20,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: context.screenWidth * .4,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: context.heightSize10),
                                    buildSkillRow(
                                        'Okuma',
                                        state
                                                .mainCvModel
                                                .cvModel!
                                                .foreignLanguageList?[index]
                                                .readingLevel
                                                ?.value ??
                                            0,
                                        context),
                                    SizedBox(height: context.heightSize10),
                                    buildSkillRow(
                                        'Yazma',
                                        state
                                                .mainCvModel
                                                .cvModel!
                                                .foreignLanguageList?[index]
                                                .writingLevel
                                                ?.value ??
                                            0,
                                        context),
                                    SizedBox(height: context.heightSize10),
                                    buildSkillRow(
                                        'Konuşma',
                                        state
                                                .mainCvModel
                                                .cvModel!
                                                .foreignLanguageList?[index]
                                                .speakingLevel
                                                ?.value ??
                                            0,
                                        context),
                                    SizedBox(height: context.heightSize20),
                                  ],
                                ),
                              ),
                              Text(
                                state
                                        .mainCvModel
                                        .cvModel!
                                        .foreignLanguageList?[index]
                                        .institution ??
                                    "",
                                style: Theme.of(context)
                                    .textTheme
                                    .paragraph2(context),
                              ),
                            ],
                          )
                        ],
                      );
                    },
                    separatorBuilder: (context, index) {
                      return Column(
                        children: [
                          SizedBox(
                            height: context.witdhSize10,
                          ),
                          const Divider(),
                          SizedBox(
                            height: context.witdhSize10,
                          ),
                        ],
                      );
                    },
                    itemCount: state
                            .mainCvModel.cvModel!.foreignLanguageList?.length ??
                        0);
              },
            )
          ],
        ));
  }

  Widget buildSkillRow(String skill, int level, BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Text(
            skill,
            style: const TextStyle(fontSize: 18),
          ),
        ),
        Expanded(
          flex: 8,
          child: Row(
            children: List.generate(5, (index) {
              return Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: index < level ? AppColors.primary : AppColors.grey,
                      borderRadius: BorderRadius.all(
                          Radius.circular(context.heightSize10))),
                  height: context.heightSize10,
                  margin:
                      EdgeInsets.symmetric(horizontal: context.heightSize05),
                ),
              );
            }),
          ),
        ),
      ],
    );
  }
}
