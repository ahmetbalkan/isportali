import 'package:isportal/data/models/cv_models/cv_models/education_model/education_model.dart';
import 'package:isportal/data/models/cv_models/cv_models/education_model/education_selectable_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'education_state.freezed.dart';

@freezed
class EducationState with _$EducationState {
  const factory EducationState({
    required EducationStatus status,
    required EducationActiveStatus educationActiveStatus,
    required int educationLevelStatus,
    required List<EducationModel>? educationModelList,
    required EducationSelectableDataModel educationSelectableDataModel,
    required EducationModel? editingEducation,
    required bool educatlionLevelError,
    required bool schoolError,
    required bool universityError,
    required bool universitydepartmentError,
    required bool cityError,
    required bool graduationGradeError,
    required bool graduationYearError,
  }) = _EducationState;

  const EducationState._();
}

@freezed
class EducationStatus with _$EducationStatus {
  const factory EducationStatus.loading() = _loading;
  const factory EducationStatus.loaded() = _loaded;
  const factory EducationStatus.error() = _error;
}

@freezed
class EducationActiveStatus with _$EducationActiveStatus {
  const factory EducationActiveStatus.edit() = _edit;
  const factory EducationActiveStatus.add() = _add;
  const factory EducationActiveStatus.initial() = _initial;
}
