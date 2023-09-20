import 'package:freezed_annotation/freezed_annotation.dart';

part 'internship_model.freezed.dart';
part 'internship_model.g.dart';

@freezed
class InternshipModel with _$InternshipModel {
  factory InternshipModel({
    @JsonKey(name: 'Name') String? name,
    @JsonKey(name: 'Position') String? position,
    @JsonKey(name: 'StartDate') String? startDate,
    @JsonKey(name: 'EndDate') String? endDate,
    @JsonKey(name: 'Description') String? description,
  }) = _InternshipModel;

  factory InternshipModel.fromJson(Map<String, dynamic> json) =>
      _$InternshipModelFromJson(json);
}
