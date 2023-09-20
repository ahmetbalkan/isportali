import 'package:isportal/blocs/cv_page_cubit/cv_page_cubit.dart';
import 'package:isportal/blocs/cv_page_cubit/cv_page_state.dart';
import 'package:isportal/ui/pages/cv_page/partions/languages_information/widget/active_Languages_information.dart';
import 'package:isportal/ui/pages/cv_page/partions/languages_information/widget/inactive_Languages_information.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LanguagesInformationWidget extends StatelessWidget {
  const LanguagesInformationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CvPageCubit, CvPageState>(
      builder: (context, state) {
        if (state.isEditing!) {
          return const ActiveLanguagesInformationWidget();
        } else {
          return const InActiveLanguagesInformationWidget();
        }
      },
    );
  }
}
