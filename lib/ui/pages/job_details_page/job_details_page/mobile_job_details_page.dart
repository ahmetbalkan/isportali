import 'package:isportal/blocs/job_cubit/job_cubit.dart';
import 'package:isportal/blocs/job_cubit/job_state.dart';
import 'package:isportal/public_widgets/appbar/appbar.dart';
import 'package:isportal/public_widgets/buttons.dart';
import 'package:isportal/public_widgets/appbar/mobile_drawer.dart';
import 'package:isportal/public_widgets/footer/mobile_footer.dart';
import 'package:isportal/themes/constants/color_constants.dart';
import 'package:isportal/themes/constants/padding_constants.dart';
import 'package:isportal/utils/context_extention.dart';
import 'package:isportal/utils/text_extention.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:simple_html_css/simple_html_css.dart';

class MobileJobDetailsPage extends StatefulWidget {
  const MobileJobDetailsPage({super.key, required this.id, required this.name});

  final String id;
  final String name;

  @override
  State<MobileJobDetailsPage> createState() => _MobileJobDetailsPageState();
}

class _MobileJobDetailsPageState extends State<MobileJobDetailsPage> {
  @override
  void initState() {
    context.read<JobCubit>().getSingleJob(widget.id);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var html =
        "Follow<a class='sup'>pl</a> what was sent down to you from your Lord, and do not follow other guardians apart from Him. Little do <p class='h'>you remind yourselves</p><a class='f'><sup f=2437>1</a>.";

    return Scaffold(
      drawer: const MobileDrawer(),
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(context.screenHeight * .08),
          child: const MobileAppbarWidget()),
      body: SingleChildScrollView(
        child: BlocBuilder<JobCubit, JobState>(
          builder: (context, state) {
            return Padding(
              padding: AppPaddings.leftRightMedium(),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                          child: state.dataModel?.logoUrl == ""
                              ? Image.network(
                                  "https://www.yenibiris.com/Content/Images/noLogo.jpg")
                              : Image.network(
                                  state.dataModel?.logoUrl ?? "",
                                  height: context.heightSize40,
                                  fit: BoxFit.fitHeight,
                                )),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              state.dataModel?.title ?? "",
                              style:
                                  Theme.of(context).textTheme.title3(context),
                            ),
                            Text(state.dataModel?.companyName ?? "",
                                style: Theme.of(context)
                                    .textTheme
                                    .title1(context)
                                    .copyWith(
                                        color: AppColors.primary,
                                        fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: context.mobileHeightSize05,
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Görüntülenme Sayısı",
                              style: Theme.of(context)
                                  .textTheme
                                  .paragraph1(context)),
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
                              Column(
                                children: [
                                  Text(
                                    state.dataModel?.viewCount.toString() ?? "",
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
                          crossAxisAlignment: CrossAxisAlignment.start,
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
                                SvgPicture.asset("images/svg/briefcase.svg"),
                                SizedBox(width: context.witdhSize05),
                                Row(
                                  children: [
                                    Text(
                                      state.dataModel?.applicationCount ?? "",
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
                    ],
                  ),
                  SizedBox(
                    height: context.mobileHeightSize05,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
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
                                SvgPicture.asset("images/svg/briefcase.svg"),
                                SizedBox(width: context.witdhSize05),
                                Text(
                                  state.dataModel?.createDateText ?? "",
                                  style: Theme.of(context)
                                      .textTheme
                                      .title1(context),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      ),
                    ],
                  ),
                  SizedBox(
                    height: context.mobileHeightSize05,
                  ),
                  SizedBox(
                    child: MobileCustomButton(
                        text: "Bu İlana Başvur",
                        onPressed: () {},
                        textStyle: Theme.of(context)
                            .textTheme
                            .title1(context)
                            .copyWith(color: AppColors.white)),
                  ),
                  SizedBox(
                    height: context.mobileHeightSize05,
                  ),
                  Row(
                    children: [
                      Text("İş Tanımı",
                          textAlign: TextAlign.left,
                          style: Theme.of(context).textTheme.title5(context))
                    ],
                  ),
                  SizedBox(
                    height: context.mobileHeightSize05,
                  ),
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
                          style: Theme.of(context).textTheme.title5(context))
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
                      /*   HtmlWidget(
                        state.dataModel?.preferredSkillsText ?? "",
                        textStyle:
                            Theme.of(context).textTheme.paragraph2(context),
                      ),*/
                    ],
                  ),
                  SizedBox(height: context.heightSize20),
                  Row(
                    children: [
                      Text("Özet Bilgisi",
                          style: Theme.of(context).textTheme.title5(context)),
                    ],
                  ),
                  SizedBox(height: context.heightSize20),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [MobileModelColumn()],
                  ),
                  SizedBox(height: context.heightSize20),
                  const MobileFooter(),
                  SizedBox(height: context.heightSize20),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class MobileModelColumn extends StatelessWidget {
  const MobileModelColumn({super.key});

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
                    Expanded(
                      child: SizedBox(
                        child: Text(
                          state.dataModel?.propertiesList?[index].title ?? "",
                          style:
                              Theme.of(context).textTheme.paragraph2(context),
                        ),
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
