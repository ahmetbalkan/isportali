import 'package:freezed_annotation/freezed_annotation.dart';

part 'marital_status_model.freezed.dart';
part 'marital_status_model.g.dart';

@freezed
class MaritalStatusModel with _$MaritalStatusModel {
  factory MaritalStatusModel({
    @JsonKey(name: 'Name') String? name,
    @JsonKey(name: 'Value') int? value,
    @JsonKey(name: 'ParentID') int? parentID,
    @JsonKey(name: 'HasChildren') bool? hasChildren,
  }) = _MaritalStatusModel;

  factory MaritalStatusModel.fromJson(Map<String, dynamic> json) =>
      _$MaritalStatusModelFromJson(json);
}
