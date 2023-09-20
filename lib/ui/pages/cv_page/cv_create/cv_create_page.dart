import 'package:auto_route/auto_route.dart';
import 'package:isportal/blocs/cv_page_cubit/parts/education_cubit/education_cubit.dart';
import 'package:isportal/blocs/cv_page_cubit/parts/experience_cubit/experience_cubit.dart';
import 'package:isportal/data/repositories/cv_page/education_repository.dart';
import 'package:isportal/data/repositories/cv_page/experience_repository.dart';
import 'package:isportal/themes/constants/responsive_layout.dart';
import 'package:isportal/ui/pages/cv_page/cv_create/mobile_cv_create_page.dart';
import 'package:isportal/ui/pages/cv_page/cv_create/web_cv_create_page.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class CvCreatePage extends StatefulWidget {
  const CvCreatePage({
    super.key,
  });

  @override
  State<CvCreatePage> createState() => _CvCreatePageState();
}

class _CvCreatePageState extends State<CvCreatePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    String cvid = "22824137";

    return Scaffold(
      body: MultiBlocProvider(
        providers: [
          BlocProvider<EducationCubit>(
              create: (context) => EducationCubit(
                  educationRepository: EducationRepository(), cvID: cvid)),
          BlocProvider<ExperienceCubit>(
              create: (context) => ExperienceCubit(
                  experienceRepository: ExperienceRepository())),
        ],
        child: const ResponsiveLayout(
          mobileScaffold: MobileCvCreatePage(),
          tabletScaffold: WebCvCreatePage(),
          webScaffold: WebCvCreatePage(),
        ),
      ),
    );
  }
}
