import 'package:freezed_annotation/freezed_annotation.dart';

part 'extra_info_model.freezed.dart';
part 'extra_info_model.g.dart';

@freezed
class ExtraInfoModel with _$ExtraInfoModel {
  factory ExtraInfoModel({
    @JsonKey(name: 'CvID') int? cvID,
    @JsonKey(name: 'Scholarships') String? scholarships,
    @JsonKey(name: 'Publishings') String? publishings,
    @JsonKey(name: 'ClubMemberships') String? clubMemberships,
    @JsonKey(name: 'VoluntaryProjects') String? voluntaryProjects,
    @JsonKey(name: 'InterestsHobbies') String? interestsHobbies,
  }) = _ExtraInfoModel;

  factory ExtraInfoModel.fromJson(Map<String, dynamic> json) =>
      _$ExtraInfoModelFromJson(json);
}
