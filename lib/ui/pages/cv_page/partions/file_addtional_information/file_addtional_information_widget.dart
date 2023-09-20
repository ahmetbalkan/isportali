import 'package:isportal/blocs/cv_page_cubit/cv_page_cubit.dart';
import 'package:isportal/blocs/cv_page_cubit/cv_page_state.dart';
import 'package:isportal/ui/pages/cv_page/partions/file_addtional_information/widget/active_file_addtional_information_widget.dart';
import 'package:isportal/ui/pages/cv_page/partions/file_addtional_information/widget/inactive_file_addtional_information_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FileAddtionalInformationWidget extends StatelessWidget {
  const FileAddtionalInformationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CvPageCubit, CvPageState>(
      builder: (context, state) {
        if (state.isEditing!) {
          return const ActiveFileAddtionalInformationWidget();
        } else {
          return const InActiveFileAddtionalInformationWidget();
        }
      },
    );
  }
}
