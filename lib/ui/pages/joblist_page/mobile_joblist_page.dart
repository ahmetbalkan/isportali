import 'package:auto_route/auto_route.dart';
import 'package:isportal/navigation/router.dart';
import 'package:isportal/public_widgets/appbar/appbar.dart';
import 'package:isportal/public_widgets/appbar/mobile_drawer.dart';
import 'package:isportal/themes/constants/color_constants.dart';
import 'package:isportal/themes/constants/padding_constants.dart';
import 'package:isportal/themes/constants/textstyle_constants.dart';
import 'package:isportal/utils/context_extention.dart';
import 'package:isportal/utils/string_extention.dart';
import 'package:isportal/utils/text_extention.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../blocs/job_list_cubit/job_list_cubit.dart';
import '../../../blocs/job_list_cubit/job_list_state.dart';

class MobileJobListPage extends StatefulWidget {
  const MobileJobListPage({super.key});

  @override
  State<MobileJobListPage> createState() => _MobileJobListPageState();
}

class _MobileJobListPageState extends State<MobileJobListPage> {
  final ScrollController _scrollController = ScrollController();

  late FormGroup form;
  @override
  void initState() {
    super.initState();
    form = FormGroup({
      'position': FormControl<String>(disabled: true),
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
      drawer: const MobileDrawer(),
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(context.screenHeight * .08),
          child: const MobileAppbarWidget()),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: ReactiveForm(
          formGroup: form,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: AppPaddings.allMedium(),
                child: Container(
                  width: double.infinity,
                  height: 70,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: const Color(0xFFE2E2E2)),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 4,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: AppPaddings.leftLarge(),
                              child: SvgPicture.asset(
                                "images/svg/search.svg",
                                height: 24,
                              ),
                            ),
                            const SizedBox(width: 8),
                            Expanded(
                              child: ReactiveTextField(
                                onTap: (control) {},
                                formControlName: 'position',
                                cursorHeight: 26,
                                textAlignVertical: TextAlignVertical.center,
                                decoration: InputDecoration(
                                  hintText: 'Pozisyon',
                                  hintStyle: AppTextSyles.redHatDisplay(
                                    fontSize: context.mobileTitle1,
                                  ),
                                  contentPadding: const EdgeInsets.symmetric(
                                      horizontal: 16),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(4.0),
                                  ),
                                ),
                                style: AppTextSyles.redHatDisplay(
                                  fontSize: context.screenWidth * 0.008,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const MobileJobListWidget()
            ],
          ),
        ),
      ),
    );
  }
}

class MobileJobListWidget extends StatelessWidget {
  const MobileJobListWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
          padding: AppPaddings.leftRightMedium(),
          width: context.screenWidth,
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
                          name: state.jobList[index].title!
                              .routeLinkGenerator()));
                    },
                    child: Container(
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
                                flex: 3,
                                child: Padding(
                                  padding: AppPaddings.allMedium(),
                                  child: state.jobList[index].logoUrl == ""
                                      ? Image.network(
                                          "https://www.yenibiris.com/Content/Images/noLogo.jpg",
                                          fit: BoxFit.fitHeight,
                                        )
                                      : Image.network(
                                          state.jobList[index].logoUrl ?? "",
                                          fit: BoxFit.fitHeight,
                                        ),
                                ),
                              ),
                              const Spacer(),
                              Expanded(
                                flex: 5,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: context.heightSize10,
                                    ),
                                    Text(state.jobList[index].title ?? "",
                                        style: Theme.of(context)
                                            .textTheme
                                            .title3(context)),
                                    SizedBox(
                                      height: context.heightSize05,
                                    ),
                                    Text(
                                        state.jobList[index].companyName
                                                ?.limit(20) ??
                                            "",
                                        style: Theme.of(context)
                                            .textTheme
                                            .title1(context)),
                                    SizedBox(
                                      height: context.heightSize05,
                                    ),
                                    Text(
                                        state.jobList[index].locationName?.first
                                                .limit(20) ??
                                            "",
                                        style: Theme.of(context)
                                            .textTheme
                                            .paragraph1(context)),
                                    SizedBox(
                                      height: context.heightSize10,
                                    ),
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
          )),
    );
  }
}
