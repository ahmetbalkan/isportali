import 'package:auto_route/auto_route.dart';
import 'package:isportal/blocs/job_list_cubit/job_list_cubit.dart';
import 'package:isportal/blocs/job_list_cubit/job_list_state.dart';
import 'package:isportal/navigation/router.dart';
import 'package:isportal/themes/constants/color_constants.dart';
import 'package:isportal/themes/constants/padding_constants.dart';
import 'package:isportal/themes/constants/textstyle_constants.dart';
import 'package:isportal/utils/context_extention.dart';
import 'package:isportal/utils/string_extention.dart';
import 'package:isportal/utils/text_extention.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class JobListWidget extends StatelessWidget {
  const JobListWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: AppPaddings.leftRightMedium(),
        child: BlocBuilder<JobListCubit, JobListState>(
          builder: (context, state) {
            return ListView.separated(
              itemCount: state.jobList.length,
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    context.router.replace(JobDetailsRoute(
                        id: state.jobList[index].advertisementID.toString(),
                        name:
                            state.jobList[index].title!.routeLinkGenerator()));
                  },
                  child: Container(
                    height: 150,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: AppColors.softGrey, width: 1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    width: double.infinity,
                    child: Padding(
                      padding: AppPaddings.leftRightLarge(),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              flex: 1,
                              child: Padding(
                                padding: AppPaddings.allMedium(),
                                child: Image.network(
                                  state.jobList[index].logoUrl ?? "",
                                  fit: BoxFit.cover,
                                  errorBuilder: (context, error, stackTrace) {
                                    return Image.network(
                                      "https://www.yenibiris.com/Content/Images/noLogo.jpg",
                                      fit: BoxFit.fitHeight,
                                    );
                                  },
                                ),
                              ),
                            ),
                            const Spacer(),
                            Expanded(
                              flex: 3,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(state.jobList[index].title ?? "",
                                      style: Theme.of(context)
                                          .textTheme
                                          .title3(context)),
                                  SizedBox(
                                    height: context.heightSize05,
                                  ),
                                  Text(state.jobList[index].companyName ?? "",
                                      style: Theme.of(context)
                                          .textTheme
                                          .paragraph3(context)),
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    state.jobList[index].locationName?.first
                                            .limit(20) ??
                                        "",
                                    style: AppTextSyles.redHatDisplay(
                                      fontSize: context.screenWidth * .010,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    state.jobList[index].orderDate?.timeAgo() ??
                                        "",
                                    style: AppTextSyles.redHatDisplay(
                                      fontSize: context.screenWidth * .010,
                                    ),
                                  ),
                                  SvgPicture.asset(
                                    "images/svg/right-angle.svg",
                                    height: context.screenWidth * 0.015,
                                  )
                                ],
                              ),
                            ),
                          ]),
                    ),
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(
                  height: context.screenHeight * .008,
                );
              },
            );
          },
        ));
  }
}
