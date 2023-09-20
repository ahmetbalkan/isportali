import 'package:isportal/data/models/cv_models/cv_models/personal_data_model/birth_place_model.dart';
import 'package:isportal/data/models/cv_models/cv_models/personal_data_model/handicap_model.dart';
import 'package:isportal/data/models/cv_models/cv_models/personal_data_model/iskur_info_model.dart';
import 'package:isportal/data/models/cv_models/cv_models/personal_data_model/lookup_model.dart';
import 'package:isportal/data/models/cv_models/cv_models/personal_data_model/military_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'personal_details_model.freezed.dart';
part 'personal_details_model.g.dart';

@freezed
class PersonalDetailsModel with _$PersonalDetailsModel {
  factory PersonalDetailsModel({
    @JsonKey(name: 'CvID') int? cvID,
    @JsonKey(name: 'FirstName') String? firstName,
    @JsonKey(name: 'LastName') String? lastName,
    @JsonKey(name: 'IDNumber') int? idNumber,
    @JsonKey(name: 'Gender') LookupModel? gender,
    @JsonKey(name: 'Email') String? email,
    @JsonKey(name: 'Email2') String? email2,
    @JsonKey(name: 'Nationality') LookupModel? nationality,
    @JsonKey(name: 'Nationality2') LookupModel? nationality2,
    @JsonKey(name: 'Summary') String? summary,
    @JsonKey(name: 'BirthDate') String? birthDate,
    @JsonKey(name: 'BirthPlace') BirthPlaceModel? birthPlace,
    @JsonKey(name: 'MaritalStatus') LookupModel? maritalStatus,
    @JsonKey(name: 'Military') MilitaryModel? military,
    @JsonKey(name: 'IskurInfo') IskurInfoModel? iskurInfo,
    @JsonKey(name: 'Handicap') HandicapModel? handicap,
    @JsonKey(name: 'Conviction') dynamic conviction,
    @JsonKey(name: 'TerrorismVictim') dynamic terrorismVictim,
    @JsonKey(name: 'LinkedIn') String? linkedin,
    @JsonKey(name: 'EducationStatus') dynamic educationStatus,
  }) = _PersonalDetailsModel;

  factory PersonalDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$PersonalDetailsModelFromJson(json);
}
