import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isportal/data/models/job_list_model/filter_data_model/job_list_filter_model.dart';

part 'joblist_filter_section_model.freezed.dart';

@freezed
class JobListFilterSectionModel with _$JobListFilterSectionModel {
  const factory JobListFilterSectionModel({
    required List<JobListFilterModel> filteredOptions,
    required bool isExpanded,
    required List<JobListFilterModel> checkedOptions,
  }) = _JobListFilterSectionModel;

  
}
