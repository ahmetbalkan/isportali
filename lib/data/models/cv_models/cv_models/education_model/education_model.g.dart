// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'education_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EducationModel _$EducationModelFromJson(Map<String, dynamic> json) =>
    EducationModel(
      id: json['ID'] as int?,
      cvID: json['CvID'] as int?,
      educationLevel: json['EducationLevel'] == null
          ? null
          : CvDataModel.fromJson(
              json['EducationLevel'] as Map<String, dynamic>),
      school: json['School'] == null
          ? null
          : CvDataModel.fromJson(json['School'] as Map<String, dynamic>),
      department: json['Department'] == null
          ? null
          : CvDataModel.fromJson(json['Department'] as Map<String, dynamic>),
      city: json['City'] == null
          ? null
          : CvDataModel.fromJson(json['City'] as Map<String, dynamic>),
      country: json['Country'] == null
          ? null
          : CvDataModel.fromJson(json['Country'] as Map<String, dynamic>),
      graduationYear: json['GraduationYear'] as int?,
      graduationGrade: json['GraduationGrade'] as String?,
      isStillStudent: json['IsStillStudent'] as bool?,
      description: json['Description'] as String?,
    );

Map<String, dynamic> _$EducationModelToJson(EducationModel instance) =>
    <String, dynamic>{
      'ID': instance.id,
      'CvID': instance.cvID,
      'EducationLevel': instance.educationLevel,
      'School': instance.school,
      'Department': instance.department,
      'City': instance.city,
      'Country': instance.country,
      'GraduationYear': instance.graduationYear,
      'GraduationGrade': instance.graduationGrade,
      'IsStillStudent': instance.isStillStudent,
      'Description': instance.description,
    };
