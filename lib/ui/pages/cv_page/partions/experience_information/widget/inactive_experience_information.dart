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
import 'package:isportal/utils/string_extention.dart';

class InActiveExperienceInformationWidget extends StatelessWidget {
  const InActiveExperienceInformationWidget({super.key});

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
                "İş Deneyimleri",
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
          SizedBox(
            width: double.maxFinite,
            child: BlocBuilder<CvPageCubit, CvPageState>(
              builder: (context, state) {
                return ListView.separated(
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 7,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  state
                                          .mainCvModel
                                          .cvModel
                                          ?.experienceList?[index]
                                          .position
                                          ?.name ??
                                      "",
                                  style: Theme.of(context)
                                      .textTheme
                                      .title3(context),
                                ),
                                SizedBox(
                                  height: context.heightSize05,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      state
                                              .mainCvModel
                                              .cvModel
                                              ?.experienceList?[index]
                                              .company
                                              ?.name ??
                                          "",
                                      style: Theme.of(context)
                                          .textTheme
                                          .paragraph2(context),
                                    ),
                                    Text(
                                      " / ",
                                      style: Theme.of(context)
                                          .textTheme
                                          .paragraph2(context),
                                    ),
                                    Text(
                                      state
                                              .mainCvModel
                                              .cvModel
                                              ?.experienceList?[index]
                                              .sector
                                              ?.name ??
                                          "",
                                      style: Theme.of(context)
                                          .textTheme
                                          .paragraph2(context),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: context.heightSize05,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      state.mainCvModel.cvModel
                                              ?.experienceList?[index].startDate
                                              ?.parseToDifferentFormat() ??
                                          "",
                                      style: Theme.of(context)
                                          .textTheme
                                          .paragraph2(context),
                                    ),
                                    Text(
                                      " / ",
                                      style: Theme.of(context)
                                          .textTheme
                                          .paragraph2(context),
                                    ),
                                    Text(
                                      state.mainCvModel.cvModel
                                              ?.experienceList?[index].endDate
                                              ?.parseToDifferentFormat() ??
                                          "",
                                      style: Theme.of(context)
                                          .textTheme
                                          .paragraph2(context),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: context.heightSize05,
                                ),
                                Text(
                                  state
                                          .mainCvModel
                                          .cvModel
                                          ?.experienceList?[index]
                                          .description ??
                                      "",
                                  style: Theme.of(context)
                                      .textTheme
                                      .paragraph2(context),
                                ),
                                SizedBox(
                                  height: context.heightSize05,
                                ),
                              ],
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: Container(
                              decoration:
                                  DecorationConstants.greyBorderContainer,
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
                    itemCount:
                        state.mainCvModel.cvModel?.experienceList?.length ?? 0);
              },
            ),
          )
        ],
      ),
    );
  }
}
