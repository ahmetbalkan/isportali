import 'package:isportal/data/models/cv_models/lookup_models/cv_data_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cv_create_selectable_data_model.freezed.dart';
part 'cv_create_selectable_data_model.g.dart';

@freezed
class CvCreateSelectableDataModel with _$CvCreateSelectableDataModel {
  factory CvCreateSelectableDataModel({
    @JsonKey(name: 'University') List<CvDataModel>? university,
    @JsonKey(name: 'UniversityDepartment')
    List<CvDataModel>? universityDepartment,
    @JsonKey(name: 'City') List<CvDataModel>? city,
    @JsonKey(name: 'Country') List<CvDataModel>? country,
    @JsonKey(name: 'EducationRank') List<CvDataModel>? educationLevel,
  }) = _CvCreateSelectableDataModel;

  factory CvCreateSelectableDataModel.fromJson(Map<String, dynamic> json) =>
      _$CvCreateSelectableDataModelFromJson(json);
}
