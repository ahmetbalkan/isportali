import 'package:auto_route/auto_route.dart';
import 'package:isportal/blocs/job_list_cubit/job_list_cubit.dart';
import 'package:isportal/blocs/job_list_cubit/job_list_state.dart';
import 'package:isportal/public_widgets/appbar/appbar.dart';
import 'package:isportal/public_widgets/buttons.dart';
import 'package:isportal/public_widgets/footer/footer.dart';
import 'package:isportal/themes/constants/color_constants.dart';
import 'package:isportal/themes/constants/padding_constants.dart';
import 'package:isportal/themes/constants/textstyle_constants.dart';
import 'package:isportal/ui/pages/joblist_page/widget/filter_widget.dart';
import 'package:isportal/ui/pages/joblist_page/widget/job_list_widget.dart';
import 'package:isportal/utils/context_extention.dart';
import 'package:isportal/utils/other_extention.dart';
import 'package:isportal/utils/text_extention.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:reactive_forms/reactive_forms.dart';

class WebJobListPage extends StatefulWidget {
  const WebJobListPage({super.key});

  @override
  State<WebJobListPage> createState() => _WebJobListPageState();
}

class _WebJobListPageState extends State<WebJobListPage> {
  final ScrollController _scrollController = ScrollController();

  late FormGroup form;
  @override
  void initState() {
    super.initState();
    form = FormGroup({
      'position': FormControl<String>(),
      'city': FormControl<String>(),
    });
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_isBottom) context.read<JobListCubit>().increasedIndex();
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;

    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.position.pixels;
    return currentScroll >=
        (maxScroll *
            0.9); // You can be a bit more precise by tweaking the factor.
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(context.screenHeight * .08),
            child: const AppBarWidget()),
        body: SingleChildScrollView(
            controller: _scrollController,
            child: Align(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: context.screenWidth,
                          height: context.screenHeight * .3,
                          color: AppColors.softGrey,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                            width: context.screenWidth * .8,
                            height: context.screenHeight * .35,
                            child: Column(children: [
                              SizedBox(
                                height: context.screenHeight * 0.030,
                              ),
                              Row(
                                children: [
                                  TextButton(
                                    onPressed: () =>
                                        AutoRouter.of(context).popUntilRoot(),
                                    child: Text(
                                      'Anasayfa',
                                      style: AppTextSyles.RedHatDisplayBold(
                                          fontSize: context.screenWidth * 0.008,
                                          fontWeight: FontWeight.bold,
                                          textColor: AppColors.black),
                                    ),
                                  ),
                                  Text(
                                    ' > ',
                                    style: AppTextSyles.redHatDisplay(
                                        fontSize: context.screenWidth * 0.008,
                                        fontWeight: FontWeight.bold,
                                        textColor: AppColors.black),
                                  ),
                                  Text(
                                    'İş İlanları',
                                    style: AppTextSyles.redHatDisplay(
                                        fontSize: context.screenWidth * 0.008,
                                        fontWeight: FontWeight.bold,
                                        textColor: AppColors.black),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: context.screenHeight * 0.030,
                              ),
                              Container(
                                width: context.screenWidth,
                                height: context.screenHeight * .25,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                      color: AppColors.softGrey, width: 1),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Padding(
                                  padding: AppPaddings.allLarge(),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'İş Ara',
                                              style: AppTextSyles
                                                  .RedHatDisplayBold(
                                                      fontSize:
                                                          context.screenWidth *
                                                              0.010,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      textColor:
                                                          AppColors.black),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        child: ReactiveForm(
                                          formGroup: form,
                                          child: Row(
                                            children: [
                                              Expanded(
                                                flex: 5,
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      width: double.infinity,
                                                      height: 60,
                                                      decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        border: Border.all(
                                                            color: const Color(
                                                                0xFFE2E2E2)),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8),
                                                      ),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceEvenly,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: [
                                                          Expanded(
                                                            flex: 4,
                                                            child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Padding(
                                                                  padding:
                                                                      AppPaddings
                                                                          .leftLarge(),
                                                                  child:
                                                                      SvgPicture
                                                                          .asset(
                                                                    "images/svg/search.svg",
                                                                    height: 24,
                                                                  ),
                                                                ),
                                                                const SizedBox(
                                                                    width: 8),
                                                                Expanded(
                                                                  child:
                                                                      ReactiveTextField(
                                                                    formControlName:
                                                                        'position',
                                                                    cursorHeight:
                                                                        26,
                                                                    textAlignVertical:
                                                                        TextAlignVertical
                                                                            .center,
                                                                    decoration:
                                                                        InputDecoration(
                                                                      hintText:
                                                                          'Pozisyon',
                                                                      hintStyle:
                                                                          AppTextSyles
                                                                              .redHatDisplay(
                                                                        fontSize:
                                                                            context.screenWidth *
                                                                                0.008,
                                                                      ),
                                                                      contentPadding: const EdgeInsets
                                                                              .symmetric(
                                                                          horizontal:
                                                                              16),
                                                                      border:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide.none,
                                                                        borderRadius:
                                                                            BorderRadius.circular(4.0),
                                                                      ),
                                                                    ),
                                                                    style: AppTextSyles
                                                                        .redHatDisplay(
                                                                      fontSize:
                                                                          context.screenWidth *
                                                                              0.008,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding: AppPaddings
                                                                .topBottomSmall(),
                                                            child: const VerticalDivider(
                                                                color: AppColors
                                                                    .softGrey),
                                                          ),
                                                          Expanded(
                                                            flex: 4,
                                                            child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Padding(
                                                                  padding:
                                                                      AppPaddings
                                                                          .leftLarge(),
                                                                  child:
                                                                      SvgPicture
                                                                          .asset(
                                                                    "images/svg/location.svg",
                                                                    height: 24,
                                                                  ),
                                                                ),
                                                                const SizedBox(
                                                                    width: 8),
                                                                Expanded(
                                                                  child:
                                                                      ReactiveTextField(
                                                                    formControlName:
                                                                        'city',
                                                                    cursorHeight:
                                                                        26,
                                                                    textAlignVertical:
                                                                        TextAlignVertical
                                                                            .center,
                                                                    decoration:
                                                                        InputDecoration(
                                                                      hintText:
                                                                          'Şehir',
                                                                      hintStyle:
                                                                          AppTextSyles
                                                                              .redHatDisplay(
                                                                        fontSize:
                                                                            context.screenWidth *
                                                                                0.008,
                                                                      ),
                                                                      contentPadding: const EdgeInsets
                                                                              .symmetric(
                                                                          horizontal:
                                                                              16),
                                                                      border:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide.none,
                                                                        borderRadius:
                                                                            BorderRadius.circular(4.0),
                                                                      ),
                                                                    ),
                                                                    style: AppTextSyles
                                                                        .redHatDisplay(
                                                                      fontSize:
                                                                          context.screenWidth *
                                                                              0.008,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            height:
                                                                double.infinity,
                                                            child: CustomButton(
                                                              text: "Ara",
                                                              onPressed: () {
                                                                if (form
                                                                    .valid) {
                                                                } else {
                                                                  context
                                                                      .read<
                                                                          JobListCubit>()
                                                                      .searchJob(
                                                                        position:
                                                                            form.formToString("position"),
                                                                        city: form
                                                                            .formToString("city"),
                                                                      );
                                                                }
                                                              },
                                                              fontSize: context
                                                                      .screenWidth *
                                                                  0.008,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                height: context.heightSize10,
                                              ),
                                              Visibility(
                                                visible: false,
                                                child: Expanded(
                                                  flex: 1,
                                                  child: Container(
                                                    height: 70,
                                                    decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color: AppColors
                                                              .softGrey),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8),
                                                    ),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Expanded(
                                                          child: Container(
                                                            alignment: Alignment
                                                                .center,
                                                            padding: EdgeInsets
                                                                .symmetric(
                                                              horizontal: context
                                                                      .screenWidth *
                                                                  0.010,
                                                            ),
                                                            child:
                                                                DropdownButton<
                                                                    String>(
                                                              value:
                                                                  'En yeni ilanlar',
                                                              style: AppTextSyles
                                                                  .redHatDisplay(
                                                                fontSize: context
                                                                        .screenWidth *
                                                                    0.008,
                                                              ),
                                                              items: const [
                                                                DropdownMenuItem(
                                                                  value:
                                                                      'En yeni ilanlar',
                                                                  child: Text(
                                                                      'En yeni ilanlar'),
                                                                ),
                                                                DropdownMenuItem(
                                                                  value:
                                                                      'En eski ilanlar',
                                                                  child: Text(
                                                                      'En eski ilanlar'),
                                                                ),
                                                              ],
                                                              onChanged:
                                                                  (value) {},
                                                              underline:
                                                                  Container(),
                                                              isExpanded: true,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      BlocBuilder<JobListCubit, JobListState>(
                                        builder: (context, state) {
                                          return Text(
                                            state.searchError,
                                            style: Theme.of(context)
                                                .textTheme
                                                .paragraph3(context)
                                                .copyWith(color: Colors.red),
                                          );
                                        },
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ]),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      width: context.screenWidth * .8,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset("images/svg/filter-bars.svg"),
                              const SizedBox(
                                width: 20,
                              ),
                              Text(
                                "En Uygun İlanlar",
                                style: AppTextSyles.redHatDisplay(
                                  fontSize: context.screenWidth * 0.008,
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          BlocBuilder<JobListCubit, JobListState>(
                            builder: (context, state) => state.jobListStatus
                                .when(
                                    loading: () =>
                                        const CircularProgressIndicator(),
                                    loaded: () => Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                              flex: 1,
                                              child: BlocBuilder<JobListCubit,
                                                  JobListState>(
                                                builder: (context, state) {
                                                  return Column(
                                                    children: [
                                                      const FilterWidget(),
                                                      /*     CustomExpansionTile(
                                                          section: "city",
                                                          title: "Şehir",
                                                          jobList: state.city
                                                              .filteredOptions),
                                                      CustomExpansionTile(
                                                          section: "category",
                                                          title: "Kategori",
                                                          jobList: state
                                                              .category
                                                              .filteredOptions),
                                                      CustomExpansionTile(
                                                          section: "sector",
                                                          title: "Sektör",
                                                          jobList: state
                                                              .sectorList
                                                              .filteredOptions),
                                                      WithoutSearchExpansionTile(
                                                          section:
                                                              "workingType",
                                                          title:
                                                              "Çalışma Şekli",
                                                          jobList: state
                                                              .workingType
                                                              .filteredOptions),
                                                      WithoutSearchExpansionTile(
                                                          section: "experience",
                                                          title: "Deneyim",
                                                          jobList: state
                                                              .experience
                                                              .filteredOptions),
                                                  */
                                                      const SizedBox(
                                                          height: 20),
                                                      SizedBox(
                                                        width: double.infinity,
                                                        child: CustomButton(
                                                          text: "Uygula",
                                                          onPressed: () {},
                                                          fontSize: context
                                                                  .screenWidth *
                                                              0.008,
                                                        ),
                                                      )
                                                    ],
                                                  );
                                                },
                                              ),
                                            ),
                                            Expanded(
                                              flex: 4,
                                              child: BlocBuilder<JobListCubit,
                                                  JobListState>(
                                                builder: (context, state) =>
                                                    state.jobListStatus.when(
                                                  loading: () => SizedBox(
                                                    height:
                                                        context.screenHeight,
                                                    child: const Align(
                                                        alignment:
                                                            Alignment.center,
                                                        child:
                                                            CircularProgressIndicator()),
                                                  ),
                                                  loaded: () =>
                                                      const JobListWidget(),
                                                  error: () => const Center(
                                                      child: ErrorWidget()),
                                                  nullData: () => const Center(
                                                      child: NullWidget()),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                    error: () => const Text("test"),
                                    nullData: () => const Text("null")),
                          ),
                          SizedBox(
                            height: context.screenHeight * 0.05,
                          ),
                          SizedBox(
                            height: context.screenWidth * .10,
                            child: const FooterWidget(),
                          ),
                        ],
                      ),
                    )
                  ],
                ))));
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
