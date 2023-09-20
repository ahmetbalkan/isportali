import 'package:isportal/data/models/job_model/job_list_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'job_list_state.freezed.dart';

@freezed
class JobListState with _$JobListState {
  const factory JobListState({
    required JobListStatus jobListStatus,
    required List<JobListModel> jobList,
    required int index,
    required String position,
    required String city,
    required String searchError,
    required String filterError,
  }) = _JobListState;

  const JobListState._();
}

@freezed
class JobListStatus with _$JobListStatus {
  const factory JobListStatus.loading() = _loading;
  const factory JobListStatus.loaded() = _loaded;
  const factory JobListStatus.error() = _error;
  const factory JobListStatus.nullData() = _nullData;
}
