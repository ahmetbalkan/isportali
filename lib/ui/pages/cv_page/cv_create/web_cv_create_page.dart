import 'package:isportal/blocs/cv_page_cubit/cv_page_cubit.dart';
import 'package:isportal/blocs/cv_page_cubit/cv_page_state.dart';
import 'package:isportal/public_widgets/appbar/appbar.dart';
import 'package:isportal/themes/constants/decoration_constant.dart';
import 'package:isportal/themes/constants/padding_constants.dart';
import 'package:isportal/ui/pages/cv_page/partions/education_information/education_information.dart';
import 'package:isportal/ui/pages/cv_page/partions/experience_information/experience_information.dart';
import 'package:isportal/utils/context_extention.dart';
import 'package:isportal/utils/text_extention.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WebCvCreatePage extends StatefulWidget {
  const WebCvCreatePage({super.key});

  @override
  State<WebCvCreatePage> createState() => _WebCvCreatePageState();
}

class _WebCvCreatePageState extends State<WebCvCreatePage> {
  final ScrollController _scrollController = ScrollController();
  final List<GlobalKey> _contentKeys = List.generate(7, (_) => GlobalKey());

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(context.screenHeight * .08),
          child: const AppBarWidget()),
      body: Stack(children: [
        Align(
          alignment: Alignment.topRight,
          child: Container(
            padding: AppPaddings.rightXXXLarge(),
            width: context.screenWidth * .8,
            child: SingleChildScrollView(
              child: BlocBuilder<CvPageCubit, CvPageState>(
                builder: (context, state) => state.status.when(
                    loading: () => SizedBox(
                        height: context.heightSize200,
                        child:
                            const Center(child: CircularProgressIndicator())),
                    loaded: () => Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            /*  const PersonalInformationWidget(),*/
                            SizedBox(
                              height: context.heightSize20,
                            ),
                            const EducationInformationWidget(),
                            SizedBox(
                              height: context.heightSize20,
                            ),
                            const ExperienceInformationWidget(),
                            SizedBox(
                              height: context.heightSize20,
                            ),
                            /*  const LanguagesInformationWidget(),
                            SizedBox(
                              height: context.heightSize20,
                            ),
                            const CapabilitiesSpecialtyInformationWidget(),
                            SizedBox(
                              height: context.heightSize20,
                            ),
                            const SeminarCoursesInformationWidget(),
                            SizedBox(
                              height: context.heightSize20,
                            ),
                            const AddtionalInformationWidget(),
                            SizedBox(
                              height: context.heightSize20,
                            ),
                            const FileAddtionalInformationWidget(),
                            SizedBox(
                              height: context.heightSize20,
                            ),
                            const FooterWidget()*/
                          ],
                        )),
              ),
            ),
          ),
        ),
        SizedBox(
          height: context.screenHeight * .5,
          width: context.screenWidth * .2,
          child: Padding(
            padding: AppPaddings.leftRightMedium(),
            child: Container(
              decoration: DecorationConstants.greyBorderContainer,
              height: 500,
              padding: AppPaddings.allMedium(),
              width: context.screenWidth * .2,
              child: Column(
                children: [
                  Text(
                    "Özgeçmişim",
                    style: Theme.of(context).textTheme.titlebig1(context),
                  ),
                  SizedBox(
                    height: context.heightSize05,
                  ),
                  const Divider(thickness: 0.4),
                  nameItem('Kişisel Bilgiler', 0, true),
                  nameItem('Eğitim Bilgileri', 1, true),
                  nameItem('İş Deneyimleri', 2, true),
                  nameItem('Yabancı Diller', 3, false),
                  nameItem('Yetkinlik & Uzmanlık', 4, false),
                  nameItem('Seminer & Kurs', 5, true),
                  nameItem('Ekli Dosyalar', 6, true),
                ],
              ),
            ),
          ),
        )
      ]),
    );
  }

  Widget nameItem(String name, int index, bool status) {
    return GestureDetector(
      onTap: () {
        final keyContext = _contentKeys[index].currentContext;
        if (keyContext != null) {
          Scrollable.ensureVisible(keyContext,
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeInOut);
        }
      },
      child: Padding(
        padding: AppPaddings.leftLarge(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: context.heightSize10,
            ),
            Row(
              children: [
                status
                    ? SizedBox(
                        width: context.witdhSize10,
                        child: const FaIcon(
                          FontAwesomeIcons.check,
                          color: Colors.green,
                        ),
                      )
                    : SizedBox(
                        width: context.witdhSize10,
                      ),
                SizedBox(
                  width: context.witdhSize10,
                ),
                Text(
                  name,
                  style: Theme.of(context).textTheme.title1(context),
                ),
              ],
            ),
            SizedBox(
              height: context.heightSize10,
            ),
          ],
        ),
      ),
    );
  }
}
