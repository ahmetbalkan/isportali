import 'package:isportal/blocs/cv_page_cubit/cv_page_cubit.dart';
import 'package:isportal/blocs/cv_page_cubit/cv_page_state.dart';
import 'package:isportal/ui/pages/cv_page/partions/personal_information/widget/active_personal_information_widget.dart';
import 'package:isportal/ui/pages/cv_page/partions/personal_information/widget/inactive_personal_information_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PersonalInformationWidget extends StatelessWidget {
  const PersonalInformationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CvPageCubit, CvPageState>(
      builder: (context, state) {
        if (state.isEditing!) {
          return const ActivePersonalInformationWidget();
        } else {
          return const InActivePersonalInformationWidget();
        }
      },
    );
  }
}
