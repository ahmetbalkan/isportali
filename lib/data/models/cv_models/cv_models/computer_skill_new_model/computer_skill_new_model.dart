import 'package:freezed_annotation/freezed_annotation.dart';

part 'computer_skill_new_model.freezed.dart';
part 'computer_skill_new_model.g.dart';

@freezed
class ComputerSkillNewModel with _$ComputerSkillNewModel {
  factory ComputerSkillNewModel({
    @JsonKey(name: 'Name') String? name,
    @JsonKey(name: 'Value') int? value,
    @JsonKey(name: 'ParentID') int? parentID,
    @JsonKey(name: 'HasChildren') dynamic hasChildren,
  }) = _ComputerSkillNewModel;

  factory ComputerSkillNewModel.fromJson(Map<String, dynamic> json) =>
      _$ComputerSkillNewModelFromJson(json);
}
