import 'package:isportal/blocs/cv_page_cubit/cv_page_cubit.dart';
import 'package:isportal/blocs/cv_page_cubit/cv_page_state.dart';
import 'package:isportal/ui/pages/cv_page/partions/seminar_courses_information/widget/active_seminar_courses_information.dart';
import 'package:isportal/ui/pages/cv_page/partions/seminar_courses_information/widget/inactive_seminar_courses_information.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SeminarCoursesInformationWidget extends StatelessWidget {
  const SeminarCoursesInformationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CvPageCubit, CvPageState>(
      builder: (context, state) {
        if (state.isEditing!) {
          return const ActiveSeminarCoursesInformationWidget();
        } else {
          return const InActiveSeminarCoursesInformationWidget();
        }
      },
    );
  }
}
