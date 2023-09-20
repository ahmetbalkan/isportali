// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'education_selectable_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EducationSelectableDataModel _$$_EducationSelectableDataModelFromJson(
        Map<String, dynamic> json) =>
    _$_EducationSelectableDataModel(
      university: (json['University'] as List<dynamic>?)
          ?.map((e) => CvDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      universityDepartment: (json['UniversityDepartment'] as List<dynamic>?)
          ?.map((e) => CvDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      city: (json['City'] as List<dynamic>?)
          ?.map((e) => CvDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      country: (json['Country'] as List<dynamic>?)
          ?.map((e) => CvDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      educationLevel: (json['EducationRank'] as List<dynamic>?)
          ?.map((e) => CvDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_EducationSelectableDataModelToJson(
        _$_EducationSelectableDataModel instance) =>
    <String, dynamic>{
      'University': instance.university,
      'UniversityDepartment': instance.universityDepartment,
      'City': instance.city,
      'Country': instance.country,
      'EducationRank': instance.educationLevel,
    };
