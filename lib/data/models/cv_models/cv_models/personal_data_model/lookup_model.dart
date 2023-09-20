import 'package:freezed_annotation/freezed_annotation.dart';

part 'lookup_model.freezed.dart';
part 'lookup_model.g.dart';

@freezed
class LookupModel with _$LookupModel {
  factory LookupModel({
    @JsonKey(name: 'Name') String? name,
    @JsonKey(name: 'Value') int? value,
    @JsonKey(name: 'ParentID') int? parentID,
    @JsonKey(name: 'HasChildren') dynamic hasChildren,
  }) = _LookupModel;

  factory LookupModel.fromJson(Map<String, dynamic> json) =>
      _$LookupModelFromJson(json);
}
