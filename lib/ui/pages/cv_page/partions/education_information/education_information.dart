import 'package:isportal/blocs/cv_page_cubit/parts/education_cubit/education_cubit.dart';
import 'package:isportal/blocs/cv_page_cubit/parts/education_cubit/education_state.dart';
import 'package:isportal/ui/pages/cv_page/partions/education_information/widget/active_education_information.dart';
import 'package:isportal/ui/pages/cv_page/partions/education_information/widget/inactive_education_information.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EducationInformationWidget extends StatelessWidget {
  const EducationInformationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EducationCubit, EducationState>(
        builder: (context, state) => state.educationActiveStatus.when(
              edit: () => const ActiveEducationInformationWidget(),
              add: () => const ActiveEducationInformationWidget(),
              initial: () => const InActiveEducationInformationWidget(),
            ));
  }
}
