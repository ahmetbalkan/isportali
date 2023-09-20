import 'package:auto_route/auto_route.dart';
import 'package:isportal/blocs/cv_page_cubit/cv_page_cubit.dart';
import 'package:isportal/blocs/cv_page_cubit/cv_page_state.dart';
import 'package:isportal/navigation/router.dart';
import 'package:isportal/public_widgets/appbar/appbar.dart';
import 'package:isportal/public_widgets/footer/footer.dart';
import 'package:isportal/themes/constants/color_constants.dart';
import 'package:isportal/themes/constants/decoration_constant.dart';
import 'package:isportal/themes/constants/padding_constants.dart';
import 'package:isportal/utils/context_extention.dart';
import 'package:isportal/utils/text_extention.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WebCvPage extends StatefulWidget {
  const WebCvPage({super.key});

  @override
  State<WebCvPage> createState() => _WebCvPageState();
}

double percentage = 45;

class _WebCvPageState extends State<WebCvPage> {
  @override
  void initState() {
    context.read<CvPageCubit>().getCvList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(context.screenHeight * .08),
          child: const AppBarWidget()),
      body: SingleChildScrollView(
        child: Column(children: [
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              height: context.screenHeight,
              width: context.screenWidth * .8,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: context.heightSize50,
                    ),
                    Text(
                      "Özgeçmişlerim",
                      style: Theme.of(context).textTheme.titlebig1(context),
                    ),
                    SizedBox(
                      height: context.heightSize20,
                    ),
                    Text(
                      "Lütfen düzenlemek istediğiniz özgeçmişi seçiniz.",
                      style: Theme.of(context).textTheme.paragraph2(context),
                    ),
                    SizedBox(
                      height: context.heightSize20,
                    ),
                    BlocBuilder<CvPageCubit, CvPageState>(
                      builder: (context, state) => state.status.when(
                        loading: () =>
                            const Center(child: CircularProgressIndicator()),
                        loaded: () => ListView.separated(
                          itemCount: state.cvlist.length,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: AppPaddings.leftRightLarge(),
                              child: Container(
                                decoration: DecorationConstants
                                    .blueBorderContainer
                                    .copyWith(
                                        border: Border.all(
                                            color: AppColors.primary)),
                                height: context.heightSize200,
                                padding: AppPaddings.allLarge(),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Expanded(
                                        flex: 1,
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  "%${state.cvlist[index].cvFullness.toString()}",
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .title1(context)
                                                      .copyWith(
                                                          fontSize: context
                                                                  .screenWidth *
                                                              .04,
                                                          color: AppColors
                                                              .primary),
                                                ),
                                                Text(
                                                  "Tamamlandı",
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .title1(context)
                                                      .copyWith(
                                                          color: AppColors
                                                              .primary),
                                                ),
                                              ],
                                            ),
                                          ],
                                        )),
                                    Padding(
                                      padding: AppPaddings.leftRightMedium(),
                                      child: const VerticalDivider(),
                                    ),
                                    Expanded(
                                        flex: 2,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Text(
                                              "Cv Adı",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .title1(context),
                                            ),
                                            Text(
                                              state.cvlist[index].name ?? "",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .paragraph4(context),
                                            ),
                                          ],
                                        )),
                                    Padding(
                                      padding: AppPaddings.leftRightMedium(),
                                      child: const VerticalDivider(),
                                    ),
                                    Expanded(
                                        flex: 2,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            InkWell(
                                              onTap: () {},
                                              child: Container(
                                                height: context.heightSize60,
                                                width: context.witdhSize30,
                                                decoration: DecorationConstants
                                                    .greyBorderContainer,
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  children: [
                                                    Text(
                                                      "İndir",
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .title1(context),
                                                    ),
                                                    FaIcon(
                                                      FontAwesomeIcons.filePdf,
                                                      size:
                                                          context.heightSize20,
                                                      color: AppColors.primary,
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                            InkWell(
                                              onTap: () {},
                                              child: Container(
                                                height: context.heightSize60,
                                                width: context.witdhSize30,
                                                decoration: DecorationConstants
                                                    .greyBorderContainer,
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  children: [
                                                    Text(
                                                      "Gönder",
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .title1(context),
                                                    ),
                                                    FaIcon(
                                                      FontAwesomeIcons.envelope,
                                                      size:
                                                          context.heightSize20,
                                                      color: AppColors.primary,
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                            InkWell(
                                              onTap: () {},
                                              child: Container(
                                                height: context.heightSize60,
                                                width: context.witdhSize30,
                                                decoration: DecorationConstants
                                                    .greyBorderContainer,
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  children: [
                                                    Text(
                                                      "Yazdır",
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .title1(context),
                                                    ),
                                                    FaIcon(
                                                      FontAwesomeIcons.print,
                                                      size:
                                                          context.heightSize20,
                                                      color: AppColors.primary,
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                            InkWell(
                                              onTap: () {
                                                context.router
                                                    .replace(const CvCreateRoute());
                                              },
                                              child: Container(
                                                height: context.heightSize60,
                                                width: context.witdhSize30,
                                                decoration: DecorationConstants
                                                    .primaryColorContainer,
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  children: [
                                                    Text(
                                                      "Düzenle",
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .title1(context)
                                                          .copyWith(
                                                              color: AppColors
                                                                  .white),
                                                    ),
                                                    FaIcon(
                                                      FontAwesomeIcons
                                                          .penToSquare,
                                                      size:
                                                          context.heightSize20,
                                                      color: AppColors.white,
                                                    )
                                                  ],
                                                ),
                                              ),
                                            )
                                          ],
                                        )),
                                  ],
                                ),
                              ),
                            );
                          },
                          separatorBuilder: (BuildContext context, int index) {
                            return SizedBox(
                              height: context.heightSize10,
                            );
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      height: context.heightSize100,
                    ),
                    const FooterWidget()
                  ],
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
