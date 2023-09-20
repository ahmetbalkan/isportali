import 'package:isportal/blocs/cv_page_cubit/parts/education_cubit/education_cubit.dart';
import 'package:isportal/blocs/cv_page_cubit/parts/education_cubit/education_state.dart';
import 'package:isportal/themes/constants/color_constants.dart';
import 'package:isportal/themes/constants/decoration_constant.dart';
import 'package:isportal/themes/constants/padding_constants.dart';
import 'package:isportal/utils/context_extention.dart';
import 'package:isportal/utils/text_extention.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InActiveEducationInformationWidget extends StatelessWidget {
  const InActiveEducationInformationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EducationCubit, EducationState>(
      builder: (context, state) {
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
                    "Eğitim Bilgileri",
                    style: Theme.of(context).textTheme.titlebig1(context),
                  ),
                  InkWell(
                    onTap: () {
                      context.read<EducationCubit>().changeAddStatus();
                    },
                    child: Container(
                      decoration: DecorationConstants.greyBorderContainer,
                      child: Padding(
                          padding: AppPaddings.allSmall(),
                          child: const FaIcon(
                            FontAwesomeIcons.plus,
                            color: AppColors.primary,
                          )),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: context.heightSize20,
              ),
              BlocBuilder<EducationCubit, EducationState>(
                builder: (context, state) => state.status.when(
                  loading: () => const SizedBox(
                      height: 500,
                      child: Center(child: CircularProgressIndicator())),
                  loaded: () => SizedBox(
                    width: double.maxFinite,
                    child: ListView.separated(
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
                                      state.educationModelList?[index].school
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
                                          state.educationModelList?[index]
                                                  .educationLevel?.name ??
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
                                          state.educationModelList?[index]
                                                  .department?.name ??
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
                                      state.educationModelList?[index]
                                                  .isStillStudent ==
                                              true
                                          ? "Devam Ediyor"
                                          : state.educationModelList?[index]
                                                  .graduationYear
                                                  .toString() ??
                                              ""
                                                  "",
                                      style: Theme.of(context)
                                          .textTheme
                                          .paragraph2(context),
                                    ),
                                    SizedBox(
                                      height: context.heightSize05,
                                    ),
                                    Text(
                                      state.educationModelList?[index]
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
                                child: InkWell(
                                  onTap: () {
                                    context
                                        .read<EducationCubit>()
                                        .editEducation(
                                            state.educationModelList![index]);
                                  },
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
                        itemCount: state.educationModelList?.length ?? 0),
                  )
                  //TODO ERROR YAZ.
                  ,
                  error: () => const Center(),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
