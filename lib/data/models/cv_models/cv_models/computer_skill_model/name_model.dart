import 'package:freezed_annotation/freezed_annotation.dart';

part 'name_model.freezed.dart';
part 'name_model.g.dart';

@freezed
class NameModel with _$NameModel {
  factory NameModel({
    @JsonKey(name: 'Name') String? name,
    @JsonKey(name: 'Value') int? value,
    @JsonKey(name: 'ParentID') int? parentID,
    @JsonKey(name: 'HasChildren') dynamic hasChildren,
  }) = _NameModel;

  factory NameModel.fromJson(Map<String, dynamic> json) =>
      _$NameModelFromJson(json);
}
