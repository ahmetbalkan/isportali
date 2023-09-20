import 'package:isportal/data/models/cv_models/cv_models/computer_skill_model/name_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'computer_skill_model.freezed.dart';
part 'computer_skill_model.g.dart';

@freezed
class ComputerSkillModel with _$ComputerSkillModel {
  factory ComputerSkillModel({
    @JsonKey(name: 'ID') int? id,
    @JsonKey(name: 'CvID') int? cvID,
    @JsonKey(name: 'Name') NameModel? name,
    @JsonKey(name: 'Experience') dynamic experience,
    @JsonKey(name: 'Level') dynamic level,
  }) = _ComputerSkillModel;

  factory ComputerSkillModel.fromJson(Map<String, dynamic> json) =>
      _$ComputerSkillModelFromJson(json);
}
