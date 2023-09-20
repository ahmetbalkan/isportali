import 'package:isportal/data/models/cv_models/cv_models/computer_skill_model/name_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'course_model.freezed.dart';
part 'course_model.g.dart';

@freezed
class CourseModel with _$CourseModel {
  factory CourseModel({
    @JsonKey(name: 'ID') int? id,
    @JsonKey(name: 'CvID') int? cvID,
    @JsonKey(name: 'Name') NameModel? name,
    @JsonKey(name: 'Description') String? description,
    @JsonKey(name: 'Institution') String? institution,
    @JsonKey(name: 'Year') int? year,
  }) = _CourseModel;

  factory CourseModel.fromJson(Map<String, dynamic> json) =>
      _$CourseModelFromJson(json);
}
