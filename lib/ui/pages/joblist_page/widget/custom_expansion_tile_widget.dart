import 'dart:math';

import 'package:isportal/data/models/job_list_model/filter_data_model/job_list_filter_model.dart';
import 'package:isportal/themes/constants/color_constants.dart';
import 'package:isportal/themes/constants/padding_constants.dart';
import 'package:isportal/utils/context_extention.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomExpansionTile extends StatefulWidget {
  final List<JobListFilterModel> jobList;
  final String title;
  final String section;
  final Function(bool?)? onChanged;

  const CustomExpansionTile(
      {super.key, required this.jobList,
      required this.title,
      this.onChanged,
      required this.section});

  @override
  _CustomExpansionTileState createState() => _CustomExpansionTileState();
}

class _CustomExpansionTileState extends State<CustomExpansionTile> {
  Map<String, bool> values = {};
  String filter = '';
  bool showAll = false; // Show all items or just the first 10

  @override
  void initState() {
    super.initState();
    for (var element in widget.jobList) {
      values[element.name!] = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    var filteredJobList = widget.jobList
        .where((job) => job.name!.toLowerCase().contains(filter.toLowerCase()))
        .toList();

    // Decide the number of visible items
    int visibleCount = showAll ? widget.jobList.length : 10;

    return ExpansionTile(
      title: Text(widget.title),
      initiallyExpanded: true,
      children: [
        Padding(
          padding: AppPaddings.leftRightMedium(),
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: const Icon(
                FontAwesomeIcons.magnifyingGlass,
                color: AppColors.primary,
              ),
              hintText: '${widget.title} Ara',
            ),
            onChanged: (value) {
              setState(() {
                filter = value;
              });
            },
          ),
        ),
        ListView.builder(
          shrinkWrap: true,
          itemCount: min(visibleCount, filteredJobList.length),
          itemBuilder: (context, index) {
            var job = filteredJobList[index];
            return CheckboxListTile(
              title: Text(job.name!),
              value: values[job.name!] ?? false,
              onChanged: (value) {
                setState(() {
                  values[job.name!] = value!;
                });

                /*    context
                    .read<JobListCubit>()
                    .addOrRemoveOption(widget.section, job);*/
              },
            );
          },
        ),
        // Show "Show More"/"Show Less" button if the list contains more than 10 items
        if (filteredJobList.length > 10)
          SizedBox(
            width: double.maxFinite,
            height: context.heightSize40,
            child: TextButton(
              child: Text(showAll ? 'Daha Az Göster' : 'Daha Fazla Göster'),
              onPressed: () {
                setState(() {
                  showAll = !showAll; // toggle between showing all items or not
                });
              },
            ),
          ),
      ],
    );
  }
}
