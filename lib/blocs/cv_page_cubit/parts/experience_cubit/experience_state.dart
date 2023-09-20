import 'package:isportal/data/models/cv_models/cv_models/experience_model/education_selectable_data.dart';
import 'package:isportal/data/models/cv_models/cv_models/experience_model/experience_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'experience_state.freezed.dart';

@freezed
class ExperienceState with _$ExperienceState {
  const factory ExperienceState({
    required ExperienceStatus status,
    required ExperienceActiveStatus experienceActiveStatus,
    required int experienceLevelStatus,
    required List<ExperienceModel>? experienceModelList,
    required ExperienceSelectableDataModel experienceSelectableDataModel,
    required ExperienceModel? editingEducation,
  }) = _ExperienceState;

  const ExperienceState._();
}

@freezed
class ExperienceStatus with _$ExperienceStatus {
  const factory ExperienceStatus.loading() = _loading;
  const factory ExperienceStatus.loaded() = _loaded;
  const factory ExperienceStatus.error() = _error;
}

@freezed
class ExperienceActiveStatus with _$ExperienceActiveStatus {
  const factory ExperienceActiveStatus.edit() = _edit;
  const factory ExperienceActiveStatus.add() = _add;
  const factory ExperienceActiveStatus.initial() = _initial;
}
