
import 'package:isportal/data/models/job_list_model/filter_data_model/job_list_filter_model.dart';
import 'package:flutter/material.dart';

class WithoutSearchExpansionTile extends StatefulWidget {
  final List<JobListFilterModel> jobList;
  final String title;
  final String section;
  final Function(bool?)? onChanged;

  const WithoutSearchExpansionTile(
      {super.key, required this.jobList,
      required this.title,
      this.onChanged,
      required this.section});

  @override
  _WithoutSearchExpansionTileState createState() =>
      _WithoutSearchExpansionTileState();
}

class _WithoutSearchExpansionTileState
    extends State<WithoutSearchExpansionTile> {
  Map<String, bool> values = {};

  @override
  void initState() {
    super.initState();
    for (var element in widget.jobList) {
      values[element.name!] = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(widget.title),
      initiallyExpanded: true,
      children: [
        ListView.builder(
          shrinkWrap: true,
          itemCount: widget.jobList.length,
          itemBuilder: (context, index) {
            var job = widget.jobList[index];
            return CheckboxListTile(
              title: Text(job.name!),
              value: values[job.name!] ?? false,
              onChanged: (value) {
                setState(() {
                  values[job.name!] = value!;
                });

                /*  context
                    .read<JobListCubit>()
                    .addOrRemoveOption(widget.section, job);*/
              },
            );
          },
        ),
      ],
    );
  }
}
