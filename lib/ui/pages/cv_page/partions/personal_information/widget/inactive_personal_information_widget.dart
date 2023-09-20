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

class InActivePersonalInformationWidget extends StatelessWidget {
  const InActivePersonalInformationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CvPageCubit, CvPageState>(
      builder: (context, state) {
        return Container(
          decoration: DecorationConstants.greyBorderContainer,
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                        color: AppColors.primary,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(8),
                            topLeft: Radius.circular(8))),
                    height: context.heightSize200,
                  ),
                ],
              ),
              //state.mainCvModel.cvModel?.photoPath ?? ""
              Column(
                children: [
                  Row(
                    children: [
                      const Spacer(),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(
                            context.heightSize150), // Image border

                        child: SizedBox.fromSize(
                          size: Size.fromRadius(
                              context.heightSize100), // Image radius
                          child: Image.network(
                              state.mainCvModel.cvModel?.photoPath ?? "",
                              height: context.heightSize100,
                              width: context.witdhSize100,
                              fit: BoxFit.cover),
                        ),
                      ),
                      const Spacer(),
                      Expanded(
                          flex: 6,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: context.heightSize150,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      flex: 4,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            height: context.heightSize70,
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                state
                                                        .mainCvModel
                                                        .cvModel
                                                        ?.personalDetailsModel
                                                        ?.firstName ??
                                                    "",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .title5(context),
                                              ),
                                              const Text(" "),
                                              Text(
                                                state
                                                        .mainCvModel
                                                        .cvModel
                                                        ?.personalDetailsModel
                                                        ?.lastName ??
                                                    "",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .title5(context),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            width: context.witdhSize10,
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                state
                                                        .mainCvModel
                                                        .cvModel
                                                        ?.experienceList
                                                        ?.first
                                                        .company
                                                        ?.name ??
                                                    "",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .title2(context),
                                              ),
                                              const Text(" / "),
                                              Text(
                                                state
                                                        .mainCvModel
                                                        .cvModel
                                                        ?.experienceList
                                                        ?.first
                                                        .position
                                                        ?.name ??
                                                    "",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .paragraph2(context),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: context.heightSize10,
                                ),
                                Row(
                                  children: [
                                    FaIcon(
                                      FontAwesomeIcons.locationDot,
                                      color: AppColors.grey,
                                      size: context.heightSize20,
                                    ),
                                    SizedBox(
                                      width: context.witdhSize10,
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Adres",
                                            style: Theme.of(context)
                                                .textTheme
                                                .title2(context)
                                                .copyWith(
                                                    color: AppColors.grey),
                                          ),
                                          Text(
                                            state
                                                    .mainCvModel
                                                    .cvModel
                                                    ?.communicationDetailsModel
                                                    ?.address
                                                    ?.text ??
                                                "",
                                            style: Theme.of(context)
                                                .textTheme
                                                .paragraph2(context),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: context.heightSize10,
                                ),
                                Row(
                                  children: [
                                    FaIcon(
                                      FontAwesomeIcons.envelope,
                                      color: AppColors.grey,
                                      size: context.heightSize20,
                                    ),
                                    SizedBox(
                                      width: context.witdhSize10,
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "E-mail",
                                            style: Theme.of(context)
                                                .textTheme
                                                .title2(context)
                                                .copyWith(
                                                    color: AppColors.grey),
                                          ),
                                          Text(
                                            state
                                                    .mainCvModel
                                                    .cvModel
                                                    ?.personalDetailsModel
                                                    ?.email ??
                                                "",
                                            style: Theme.of(context)
                                                .textTheme
                                                .paragraph2(context),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: context.heightSize10,
                                ),
                                Row(
                                  children: [
                                    FaIcon(
                                      FontAwesomeIcons.mobileScreen,
                                      color: AppColors.grey,
                                      size: context.heightSize20,
                                    ),
                                    SizedBox(
                                      width: context.witdhSize10,
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Telefon",
                                            style: Theme.of(context)
                                                .textTheme
                                                .title2(context)
                                                .copyWith(
                                                    color: AppColors.grey),
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                state
                                                        .mainCvModel
                                                        .cvModel
                                                        ?.communicationDetailsModel
                                                        ?.mobilePhoneNumber
                                                        ?.country
                                                        ?.name
                                                        .toString() ??
                                                    "",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .paragraph2(context),
                                              ),
                                              Text(
                                                state
                                                        .mainCvModel
                                                        .cvModel
                                                        ?.communicationDetailsModel
                                                        ?.mobilePhoneNumber
                                                        ?.number
                                                        .toString() ??
                                                    "",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .paragraph2(context),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: context.heightSize10,
                                ),
                                Row(
                                  children: [
                                    FaIcon(
                                      FontAwesomeIcons.linkedin,
                                      color: AppColors.grey,
                                      size: context.heightSize20,
                                    ),
                                    SizedBox(
                                      width: context.witdhSize10,
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Linkedin",
                                            style: Theme.of(context)
                                                .textTheme
                                                .title2(context)
                                                .copyWith(
                                                    color: AppColors.grey),
                                          ),
                                          Text(
                                            state
                                                    .mainCvModel
                                                    .cvModel
                                                    ?.socialNetworkAccountsModel
                                                    ?.linkedin ??
                                                "",
                                            style: Theme.of(context)
                                                .textTheme
                                                .paragraph2(context),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: context.heightSize20,
                                ),
                              ])),
                    ],
                  ),
                ],
              ),
              Positioned(
                top: context.heightSize150,
                right: context.heightSize20,
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {
                        context.read<CvPageCubit>().editCvPagermation();
                      },
                      child: Container(
                        decoration: DecorationConstants.greyBorderContainer,
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
              ),
            ],
          ),
        );
      },
    );
  }
}
