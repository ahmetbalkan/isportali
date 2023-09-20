import 'package:auto_route/auto_route.dart';
import 'package:isportal/blocs/job_cubit/job_cubit.dart';
import 'package:isportal/blocs/job_cubit/job_state.dart';
import 'package:isportal/navigation/router.dart';
import 'package:isportal/public_widgets/appbar/appbar.dart';
import 'package:isportal/public_widgets/buttons.dart';
import 'package:isportal/public_widgets/footer/footer.dart';
import 'package:isportal/themes/constants/color_constants.dart';
import 'package:isportal/themes/constants/decoration_constant.dart';
import 'package:isportal/themes/constants/padding_constants.dart';
import 'package:isportal/utils/context_extention.dart';
import 'package:isportal/utils/text_extention.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:isportal/utils/string_extention.dart';
import 'package:simple_html_css/simple_html_css.dart';

class WebJobDetailsPage extends StatefulWidget {
  const WebJobDetailsPage({super.key, required this.id, required this.name});

  final String id;
  final String name;

  @override
  State<WebJobDetailsPage> createState() => _WebJobDetailsPageState();
}

class _WebJobDetailsPageState extends State<WebJobDetailsPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    context.read<JobCubit>().getSingleJob(widget.id);

    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(context.screenHeight * .08),
            child: const AppBarWidget()),
        body: SingleChildScrollView(
            child: Align(
          alignment: Alignment.center,
          child: SizedBox(
            width: context.screenWidth * .8,
            child: BlocBuilder<JobCubit, JobState>(
              builder: (context, state) => state.jobStatus.when(
                loading: () => SizedBox(
                  height: context.screenHeight,
                  child: const Align(
                      alignment: Alignment.center,
                      child: CircularProgressIndicator()),
                ),
                loaded: () => const JobWidget(),
                error: () => const Center(child: ErrorWidget()),
                nullData: () => const Center(child: NullWidget()),
              ),
            ),
          ),
        )));
  }
}

class NullWidget extends StatelessWidget {
  const NullWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text("Null data");
  }
}

class ErrorWidget extends StatelessWidget {
  const ErrorWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text("error");
  }
}

class JobWidget extends StatelessWidget {
  const JobWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<JobCubit, JobState>(
      builder: (context, state) {
        return Column(
          children: [
            SizedBox(height: context.heightSize50),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: AppPaddings.leftRightLarge(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: double.infinity,
                          child: Row(children: [
                            Expanded(
                                flex: 4,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      state.dataModel?.title ?? "",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titlebig1(context),
                                    ),
                                    Text(state.dataModel?.companyName ?? "",
                                        style: Theme.of(context)
                                            .textTheme
                                            .title2(context)
                                            .copyWith(
                                                color: AppColors.primary,
                                                fontWeight: FontWeight.bold)),
                                  ],
                                )),
                            Expanded(
                                flex: 1,
                                child: SizedBox(
                                  child: CustomButton2(
                                      text: "Bu İlana Başvur",
                                      onPressed: () {},
                                      textStyle: Theme.of(context)
                                          .textTheme
                                          .title1(context)
                                          .copyWith(color: AppColors.white)),
                                ))
                          ]),
                        ),
                        SizedBox(height: context.heightSize20),
                        Container(
                            width: double.infinity,
                            decoration: DecorationConstants.greyBorderContainer,
                            child: Padding(
                              padding: AppPaddings.allLarge(),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Expanded(
                                      child: state.dataModel?.logoUrl == ""
                                          ? Image.network(
                                              "https://www.yenibiris.com/Content/Images/noLogo.jpg")
                                          : Image.network(
                                              state.dataModel?.logoUrl ?? "",
                                              height: context.heightSize50,
                                              fit: BoxFit.fitHeight,
                                            )),
                                  Expanded(
                                      child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Görüntülenme Sayısı",
                                        style: Theme.of(context)
                                            .textTheme
                                            .paragraph1(context),
                                      ),
                                      SizedBox(
                                        height: context.heightSize05,
                                      ),
                                      Row(
                                        children: [
                                          SvgPicture.asset(
                                            "images/svg/user.svg",
                                          ),
                                          SizedBox(
                                            width: context.witdhSize05,
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                state.dataModel?.viewCount
                                                        .toString() ??
                                                    "",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .title1(context),
                                              ),
                                              Text(
                                                " Görüntüleme",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .title1(context),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  )),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Durum",
                                          style: Theme.of(context)
                                              .textTheme
                                              .paragraph1(context),
                                        ),
                                        SizedBox(
                                          height: context.heightSize05,
                                        ),
                                        Row(
                                          children: [
                                            SvgPicture.asset(
                                                "images/svg/briefcase.svg"),
                                            SizedBox(
                                                width: context.witdhSize05),
                                            Row(
                                              children: [
                                                Text(
                                                  state.dataModel
                                                          ?.applicationCount ??
                                                      "",
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .title1(context),
                                                ),
                                                Text(
                                                  " Başvuru",
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .title1(context),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                      child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "İlan Yayınlanma",
                                        style: Theme.of(context)
                                            .textTheme
                                            .paragraph1(context),
                                      ),
                                      SizedBox(
                                        height: context.heightSize05,
                                      ),
                                      Row(
                                        children: [
                                          SvgPicture.asset(
                                              "images/svg/briefcase.svg"),
                                          SizedBox(width: context.witdhSize05),
                                          Text(
                                            state.dataModel?.createDateText ??
                                                "",
                                            style: Theme.of(context)
                                                .textTheme
                                                .title1(context),
                                          ),
                                        ],
                                      ),
                                    ],
                                  )),
                                ],
                              ),
                            )),
                        SizedBox(height: context.heightSize20),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: state.dataModel?.templateUrl == null
                              ? const SizedBox()
                              : SizedBox(
                                  width: double.infinity,
                                  child: Image.network(
                                    state.dataModel!.templateUrl!,
                                    fit: BoxFit.fitWidth,
                                  ),
                                ),
                        ),
                        SizedBox(height: context.heightSize20),
                        Row(
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset(
                                  "images/svg/map-pin.svg",
                                  colorFilter: const ColorFilter.mode(
                                      AppColors.grey, BlendMode.srcIn),
                                ),
                                SizedBox(width: context.witdhSize05),
                                Text(
                                    state.dataModel?.locationList?.first.name ??
                                        "",
                                    style: Theme.of(context)
                                        .textTheme
                                        .paragraph1(context))
                              ],
                            ),
                            SizedBox(width: context.witdhSize10),
                            Row(
                              children: [
                                SvgPicture.asset(
                                  "images/svg/location.svg",
                                  colorFilter: const ColorFilter.mode(
                                      AppColors.grey, BlendMode.srcIn),
                                ),
                                SizedBox(width: context.witdhSize05),
                                Text(
                                    state.dataModel?.propertiesList
                                            ?.firstWhere((model) =>
                                                model.title == 'Çalışma Şekli')
                                            .description ??
                                        "",
                                    style: Theme.of(context)
                                        .textTheme
                                        .paragraph1(context))
                              ],
                            ),
                            SizedBox(width: context.witdhSize10),
                            Row(
                              children: [
                                SvgPicture.asset(
                                  "images/svg/report.svg",
                                  colorFilter: const ColorFilter.mode(
                                      AppColors.grey, BlendMode.srcIn),
                                ),
                                SizedBox(width: context.witdhSize05),
                                Text(
                                    state.dataModel?.propertiesList
                                            ?.firstWhere((model) =>
                                                model.title ==
                                                'Pozisyon Seviyesi')
                                            .description ??
                                        "",
                                    style: Theme.of(context)
                                        .textTheme
                                        .paragraph1(context))
                              ],
                            ),
                            SizedBox(width: context.witdhSize10),
                          ],
                        ),
                        SizedBox(height: context.heightSize20),
                        Row(
                          children: [
                            Text("İş Tanımı",
                                textAlign: TextAlign.left,
                                style:
                                    Theme.of(context).textTheme.title5(context))
                          ],
                        ),
                        SizedBox(height: context.heightSize10),
                        Column(
                          children: [
                            RichText(
                                text: HTML.toTextSpan(
                                    context, state.dataModel?.description ?? "",
                                    defaultTextStyle: Theme.of(context)
                                        .textTheme
                                        .paragraph2(context)))
                          ],
                        ),
                        SizedBox(height: context.heightSize20),
                        Row(
                          children: [
                            Text("Aranan Nitelikler",
                                textAlign: TextAlign.left,
                                style:
                                    Theme.of(context).textTheme.title5(context))
                          ],
                        ),
                        SizedBox(height: context.heightSize10),
                        Column(
                          children: [
                            RichText(
                                text: HTML.toTextSpan(context,
                                    state.dataModel?.preferredSkillsText ?? "",
                                    defaultTextStyle: Theme.of(context)
                                        .textTheme
                                        .paragraph2(context)))
                          ],
                        ),
                        SizedBox(height: context.heightSize20),
                        Row(
                          children: [
                            Text("Özet Bilgisi",
                                style: Theme.of(context)
                                    .textTheme
                                    .title5(context)),
                          ],
                        ),
                        SizedBox(height: context.heightSize20),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [ModelColumn()],
                        ),
                        SizedBox(height: context.heightSize20),
                      ],
                    ),
                  ),
                ),
                const Expanded(
                  flex: 1,
                  child: RightSameJobWidget(),
                ),
              ],
            ),
            SizedBox(height: context.heightSize50),
            const FooterWidget()
          ],
        );
      },
    );
  }
}

class TitleValueListWidget extends StatelessWidget {
  final String title;
  final String value;

  const TitleValueListWidget({
    super.key,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 16),
          ),
          Text(
            ': $value',
            style: const TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}

class ModelColumn extends StatelessWidget {
  const ModelColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<JobCubit, JobState>(
      builder: (context, state) {
        return Expanded(
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: state.dataModel?.propertiesList?.length ?? 0,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  children: [
                    SizedBox(
                      width: 200, // Sabit genişlik
                      child: Text(
                        state.dataModel?.propertiesList?[index].title ?? "",
                        style: Theme.of(context).textTheme.paragraph2(context),
                      ),
                    ),
                    const Text(" :  "),
                    Expanded(
                      child: Text(
                        state.dataModel?.propertiesList?[index].description ??
                            "",
                        style: Theme.of(context).textTheme.title2(context),
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        );
      },
    );
  }
}

class RightSameJobWidget extends StatelessWidget {
  const RightSameJobWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<JobCubit, JobState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Benzer İlanlar",
              style: Theme.of(context).textTheme.title5(context),
            ),
            SizedBox(height: context.heightSize10),
            ListView.separated(
              separatorBuilder: (context, index) {
                return SizedBox(height: context.heightSize10);
              },
              shrinkWrap: true,
              itemCount: state.dataModel?.customerAdsList?.length ?? 0,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    context.router.replace(JobDetailsRoute(
                        id: state.dataModel?.customerAdsList![index]
                                .advertisementID
                                .toString() ??
                            "",
                        name: state.dataModel?.similarAdsList![index].title
                                ?.routeLinkGenerator() ??
                            ""));
                  },
                  child: Container(
                    decoration: DecorationConstants.greyBorderContainer,
                    child: Padding(
                      padding: AppPaddings.allMedium(),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                              state.dataModel?.customerAdsList?[index].title
                                      ?.limit(30) ??
                                  "",
                              style:
                                  Theme.of(context).textTheme.title3(context)),
                          SizedBox(height: context.heightSize05),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              FittedBox(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                    state.dataModel?.customerAdsList?[index]
                                            .companyName
                                            ?.limit(30) ??
                                        "",
                                    style: Theme.of(context)
                                        .textTheme
                                        .paragraph1(context)
                                        .copyWith(color: AppColors.grey)),
                              ),
                              FittedBox(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                    state.dataModel?.customerAdsList?[index]
                                            .locationName?.first
                                            .limit(30) ??
                                        "",
                                    style: Theme.of(context)
                                        .textTheme
                                        .paragraph1(context)
                                        .copyWith(color: AppColors.grey)),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
            SizedBox(height: context.heightSize10),
            ListView.separated(
              separatorBuilder: (context, index) {
                return SizedBox(height: context.heightSize10);
              },
              shrinkWrap: true,
              itemCount: state.dataModel?.similarAdsList?.length ?? 0,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    context.router.replace(JobDetailsRoute(
                        id: state.dataModel?.similarAdsList![index]
                                .advertisementID
                                .toString() ??
                            "",
                        name: state.dataModel?.similarAdsList![index].title
                                ?.routeLinkGenerator() ??
                            ""));
                  },
                  child: Container(
                    decoration: DecorationConstants.greyBorderContainer,
                    child: Padding(
                      padding: AppPaddings.allMedium(),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: context.heightSize10),
                          Text(
                              state.dataModel?.similarAdsList?[index].title
                                      ?.limit(30) ??
                                  "",
                              style:
                                  Theme.of(context).textTheme.title3(context)),
                          const SizedBox(height: 4),
                          SizedBox(height: context.heightSize05),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              FittedBox(
                                child: Text(
                                    state.dataModel?.similarAdsList?[index]
                                            .companyName
                                            ?.limit(30) ??
                                        "",
                                    overflow: TextOverflow.clip,
                                    style: Theme.of(context)
                                        .textTheme
                                        .paragraph1(context)
                                        .copyWith(color: AppColors.grey)),
                              ),
                              FittedBox(
                                child: Text(
                                    state.dataModel?.similarAdsList?[index]
                                            .locationName?.first
                                            .limit(30) ??
                                        "",
                                    overflow: TextOverflow.clip,
                                    style: Theme.of(context)
                                        .textTheme
                                        .paragraph1(context)
                                        .copyWith(color: AppColors.grey)),
                              ),
                            ],
                          ),
                          SizedBox(height: context.heightSize10)
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        );
      },
    );
  }
}
