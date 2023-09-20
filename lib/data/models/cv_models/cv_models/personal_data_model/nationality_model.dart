import 'package:freezed_annotation/freezed_annotation.dart';

part 'nationality_model.freezed.dart';
part 'nationality_model.g.dart';

@freezed
class NationalityModel with _$NationalityModel {
  factory NationalityModel({
    @JsonKey(name: 'Name') String? name,
    @JsonKey(name: 'Value') int? value,
    @JsonKey(name: 'ParentID') int? parentID,
    @JsonKey(name: 'HasChildren') bool? hasChildren,
  }) = _NationalityModel;

  factory NationalityModel.fromJson(Map<String, dynamic> json) =>
      _$NationalityModelFromJson(json);
}