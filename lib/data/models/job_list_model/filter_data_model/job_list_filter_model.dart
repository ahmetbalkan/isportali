import 'package:freezed_annotation/freezed_annotation.dart';

part 'job_list_filter_model.freezed.dart';
part 'job_list_filter_model.g.dart';

@freezed
class JobListFilterModel with _$JobListFilterModel {
  factory JobListFilterModel({
    @JsonKey(name: 'Value') int? value,
    @JsonKey(name: 'Name') String? name,
    @JsonKey(name: 'Type') int? type,
    @JsonKey(name: 'LanguageID') int? languageID,
    @JsonKey(name: 'OrderNo') int? orderNo,
  }) = _JobListFilterModel;

  factory JobListFilterModel.fromJson(Map<String, dynamic> json) =>
      _$JobListFilterModelFromJson(json);
}
