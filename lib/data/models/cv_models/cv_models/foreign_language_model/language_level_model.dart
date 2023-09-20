import 'package:freezed_annotation/freezed_annotation.dart';

part 'language_level_model.freezed.dart';
part 'language_level_model.g.dart';

@freezed
class LanguageLevelModel with _$LanguageLevelModel {
  factory LanguageLevelModel({
    @JsonKey(name: 'Name') String? name,
    @JsonKey(name: 'Value') int? value,
    @JsonKey(name: 'ParentID') int? parentID,
    @JsonKey(name: 'HasChildren') dynamic hasChildren,
  }) = _LanguageLevelModel;

  factory LanguageLevelModel.fromJson(Map<String, dynamic> json) =>
      _$LanguageLevelModelFromJson(json);
}
