import 'package:freezed_annotation/freezed_annotation.dart';

part 'salary_expectation_model.freezed.dart';
part 'salary_expectation_model.g.dart';

@freezed
class SalaryExpectationModel with _$SalaryExpectationModel {
  factory SalaryExpectationModel({
    @JsonKey(name: 'Name') String? name,
    @JsonKey(name: 'Value') int? value,
    @JsonKey(name: 'ParentID') int? parentID,
    @JsonKey(name: 'HasChildren') bool? hasChildren,
  }) = _SalaryExpectationModel;

  factory SalaryExpectationModel.fromJson(Map<String, dynamic> json) =>
      _$SalaryExpectationModelFromJson(json);
}
