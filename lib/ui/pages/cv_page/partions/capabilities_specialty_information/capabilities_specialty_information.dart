import 'package:isportal/blocs/cv_page_cubit/cv_page_cubit.dart';
import 'package:isportal/blocs/cv_page_cubit/cv_page_state.dart';
import 'package:isportal/ui/pages/cv_page/partions/capabilities_specialty_information/widget/active_capabilities_specialty_information.dart';
import 'package:isportal/ui/pages/cv_page/partions/capabilities_specialty_information/widget/inactive_capabilities_specialty_information.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CapabilitiesSpecialtyInformationWidget extends StatelessWidget {
  const CapabilitiesSpecialtyInformationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CvPageCubit, CvPageState>(
      builder: (context, state) {
        if (state.isEditing!) {
          return const ActiveCapabilitiesSpecialtyInformationWidget();
        } else {
          return const InActiveCapabilitiesSpecialtyInformationWidget();
        }
      },
    );
  }
}
