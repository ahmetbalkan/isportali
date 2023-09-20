import 'package:isportal/data/models/cv_models/lookup_models/cv_data_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'education_selectable_data.freezed.dart';
part 'education_selectable_data.g.dart';

@freezed
class EducationSelectableDataModel with _$EducationSelectableDataModel {
  factory EducationSelectableDataModel({
    @JsonKey(name: 'University') List<CvDataModel>? university,
    @JsonKey(name: 'UniversityDepartment')
    List<CvDataModel>? universityDepartment,
    @JsonKey(name: 'City') List<CvDataModel>? city,
    @JsonKey(name: 'Country') List<CvDataModel>? country,
    @JsonKey(name: 'EducationRank') List<CvDataModel>? educationLevel,
  }) = _EducationSelectableDataModel;

  factory EducationSelectableDataModel.fromJson(Map<String, dynamic> json) =>
      _$EducationSelectableDataModelFromJson(json);
}
