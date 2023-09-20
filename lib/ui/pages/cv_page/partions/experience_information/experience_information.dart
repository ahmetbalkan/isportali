import 'package:isportal/blocs/cv_page_cubit/parts/experience_cubit/experience_cubit.dart';
import 'package:isportal/blocs/cv_page_cubit/parts/experience_cubit/experience_state.dart';
import 'package:isportal/ui/pages/cv_page/partions/experience_information/widget/active_experience_information.dart';
import 'package:isportal/ui/pages/cv_page/partions/experience_information/widget/inactive_experience_information.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ExperienceInformationWidget extends StatelessWidget {
  const ExperienceInformationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ExperienceCubit, ExperienceState>(
        builder: (context, state) => state.experienceActiveStatus.when(
              edit: () => const ActiveExperienceInformationWidget(),
              add: () => const ActiveExperienceInformationWidget(),
              initial: () => const InActiveExperienceInformationWidget(),
            ));
  }
}
