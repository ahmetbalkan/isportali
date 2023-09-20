import 'package:freezed_annotation/freezed_annotation.dart';

part 'gender_model.freezed.dart';
part 'gender_model.g.dart';

@freezed
class GenderModel with _$GenderModel {
  factory GenderModel({
    @JsonKey(name: 'Name') String? name,
    @JsonKey(name: 'Value') int? value,
    @JsonKey(name: 'ParentID') int? parentID,
    @JsonKey(name: 'HasChildren') bool? hasChildren,
  }) = _GenderModel;

  factory GenderModel.fromJson(Map<String, dynamic> json) =>
      _$GenderModelFromJson(json);
}