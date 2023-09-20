import 'package:isportal/blocs/job_list_cubit/job_list_cubit.dart';
import 'package:isportal/blocs/job_list_cubit/job_list_state.dart';
import 'package:isportal/themes/constants/color_constants.dart';
import 'package:isportal/themes/constants/padding_constants.dart';
import 'package:isportal/utils/text_extention.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:reactive_forms/reactive_forms.dart';

class FilterWidget extends StatefulWidget {
  const FilterWidget({super.key});

  @override
  State<FilterWidget> createState() => _FilterWidgetState();
}

late FormGroup form;

class _FilterWidgetState extends State<FilterWidget> {
  @override
  void initState() {
    form = FormGroup({
      'search': FormControl<String>(),
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ReactiveForm(
        formGroup: form,
        child: Column(children: [
          SearchWidget(),
        ]));
  }

  Widget SearchWidget() {
    return BlocBuilder<JobListCubit, JobListState>(
      builder: (context, state) {
        return ExpansionTile(
          title: const Text("Anahtar Kelime"),
          initiallyExpanded: true,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ReactiveTextField(
                  onTap: (control) {},
                  formControlName: 'search',
                  cursorHeight: 26,
                  textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(
                      FontAwesomeIcons.magnifyingGlass,
                      color: AppColors.primary,
                    ),
                    hintText: 'Aranacak Kelime',
                    hintStyle: Theme.of(context).textTheme.paragraph2(context),
                    contentPadding: AppPaddings.leftRightMedium(),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                  ),
                  style: Theme.of(context).textTheme.paragraph3(context)),
            ),
          ],
        );
      },
    );
  }
}
