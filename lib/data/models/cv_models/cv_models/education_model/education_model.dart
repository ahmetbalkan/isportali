import 'package:json_annotation/json_annotation.dart';
import 'package:isportal/data/models/cv_models/lookup_models/cv_data_model.dart';

part 'education_model.g.dart';

@JsonSerializable()
class EducationModel {
  @JsonKey(name: 'ID')
  int? id;

  @JsonKey(name: 'CvID')
  int? cvID;

  @JsonKey(name: 'EducationLevel')
  CvDataModel? educationLevel;

  @JsonKey(name: 'School')
  CvDataModel? school;

  @JsonKey(name: 'Department')
  CvDataModel? department;

  @JsonKey(name: 'City')
  CvDataModel? city;

  @JsonKey(name: 'Country')
  CvDataModel? country;

  @JsonKey(name: 'GraduationYear')
  int? graduationYear;

  @JsonKey(name: 'GraduationGrade')
  String? graduationGrade;

  @JsonKey(name: 'IsStillStudent')
  bool? isStillStudent;

  @JsonKey(name: 'Description')
  String? description;

  EducationModel({
    this.id,
    this.cvID,
    this.educationLevel,
    this.school,
    this.department,
    this.city,
    this.country,
    this.graduationYear,
    this.graduationGrade,
    this.isStillStudent,
    this.description,
  });

  factory EducationModel.fromJson(Map<String, dynamic> json) =>
      _$EducationModelFromJson(json);

  Map<String, dynamic> toJson() => _$EducationModelToJson(this);

  @override
  String toString() {
    return 'EducationModel(id: $id, cvID: $cvID, educationLevel: $educationLevel, school: $school, department: $department, city: $city, country: $country, graduationYear: $graduationYear, graduationGrade: $graduationGrade, isStillStudent: $isStillStudent, description: $description)';
  }
}
