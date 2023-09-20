import 'package:isportal/data/models/job_model/data_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'job_state.freezed.dart';

@freezed
class JobState with _$JobState {
  const factory JobState({
    required JobStatus jobStatus,
    DataModel? dataModel,
    required String errorMessage,
  }) = _JobState;

  const JobState._();
}

@freezed
class JobStatus with _$JobStatus {
  const factory JobStatus.loading() = _loading;
  const factory JobStatus.loaded() = _loaded;
  const factory JobStatus.error() = _error;
  const factory JobStatus.nullData() = _nullData;
}
